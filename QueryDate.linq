<Query Kind="Program">
  <Connection>
    <ID>1c6548b6-b38c-4a0e-989c-2fdcebf4976b</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Driver Assembly="(internal)" PublicKeyToken="no-strong-name">LINQPad.Drivers.EFCore.DynamicDriver</Driver>
    <Server>(localdb)\MSSQLLocalDB</Server>
    <AttachFileName>&lt;UserProfile&gt;\source\repos\DatabaseP6\DatabaseP6\bin\Debug\DatabaseP6.dacpac</AttachFileName>
    <SqlSecurity>true</SqlSecurity>
    <UserName>Julien_SQL</UserName>
    <Password>AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAmrd4eR95aEW1cUEyiiMXRgAAAAACAAAAAAAQZgAAAAEAACAAAADcEEuAZk+pa1d+mXfVXxSkOJw6u/wKVy0S8/2eq4a8rwAAAAAOgAAAAAIAACAAAADj+t+8bQtqMUKOFxjnNEdaqTSfwzjQKYnutaDzthwvHhAAAACepczTEYbztLrMzRbsewCVQAAAAGjSL4e0IUHAc0WNQvVecNlsep9mq21/oQuaSZQ2uAy/UFFrlNrOLc6Y9BYTjGsbquKSsJcbgJPuqI0dSZ+2qrQ=</Password>
    <Database>DatabseP6</Database>
    <DriverData>
      <EncryptSqlTraffic>True</EncryptSqlTraffic>
      <PreserveNumeric1>True</PreserveNumeric1>
      <EFProvider>Microsoft.EntityFrameworkCore.SqlServer</EFProvider>
      <DisableSecurityPatches>true</DisableSecurityPatches>
      <TrustServerCertificate>True</TrustServerCertificate>
    </DriverData>
  </Connection>
</Query>

using System.Threading.Tasks; 

async Task Main()
{
	// 0 = All || 1 = En cours || 2 = Résolu
	var statut = SwitchStatut(2);
	
	// Limite Inférieure de la Date de création au format dd/MM/yyyy || Empty = All
	var downerCreationDate = StringDateAsDateTimeOffset("01/03/2024");
	
	// Limite Supérieure de la Date de création au format dd/MM/yyyy || Empty = All
	var upperCreationDate = StringDateAsDateTimeOffset("01/04/2024"); 
	
	// Limite Inférieure de la Date de Résolution au format dd/MM/yyyy || Empty = All
	var downerClosingDate = StringDateAsDateTimeOffset("10/03/2024");
	
	// Limite Supérieure de la Date de Résolution au format dd/MM/yyyy || Empty = All
	var upperClosingDate = StringDateAsDateTimeOffset("20/03/2024");
	
	var results = await Tickets.Where (t => (string.IsNullOrEmpty(statut) ? true : t.Statut == statut)
										 && (downerCreationDate == null ? true : t.CreationDate >= downerCreationDate )
										 && (upperCreationDate == null ? true : t.CreationDate <= upperCreationDate )
										 && (downerClosingDate == null ? true : t.ClosingDate >= downerClosingDate )
										 && (upperClosingDate == null ? true : t.ClosingDate <= upperClosingDate ))
							   .Select(t => new { Produit = t.ProduitSystemeExploitationVersion.Produit.Name, 
							   					 Version = t.ProduitSystemeExploitationVersion.Version.NumVersion,
							 					 OS = t.ProduitSystemeExploitationVersion.SystemeExploitation.Name,
							 					 Statut = t.Statut,
							   					 Problème = t.Description,
							 					 DateDeCreation = t.CreationDate.ToString("dd/MM/yyyy"),
							 					 Resolution = t.Resolution == null ? string.Empty : t.Resolution,
							 					 DateDeResolution = t.ClosingDate == null ? string.Empty : ((DateTimeOffset)t.ClosingDate).ToString("dd/MM/yyyy")})
							   .OrderBy(r => r.Produit)
								   .ThenBy(r => r.Version)
								   .ThenBy(r => r.OS)
								   .ThenBy(r => r.Statut)
							   .ToListAsync();
	Console.WriteLine(results);
}


public string SwitchStatut(int number) 
{
	string statut;
	switch (number)
	{
		case 1 : 
			statut = "En cours";
			break;
		case 2 : 
			statut = "Résolu";
			break;
		default : 
			statut = "";
			break;
	}
	return statut;
}

public DateTimeOffset? StringDateAsDateTimeOffset (string dateString) 
{
	if (string.IsNullOrEmpty(dateString))
	{
		return null;
	}
	var day = int.Parse(dateString.Substring(0,2));
	var month = int.Parse(dateString.Substring(3,2));
	var year = int.Parse(dateString.Substring(6,4));
	
	return new DateTimeOffset(year, month, day, 0, 0, 0, new TimeSpan(0));
}

