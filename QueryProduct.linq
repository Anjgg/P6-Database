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
	var statut = SwitchStatut(1);
	
	// 0 = All || 1 = Maître des investissements || 2 = Planificateur d’Anxiété Sociale || 3 = Planificateur d’Entrainement || 4 = Trader en herbe
	var nameProduct = SwitchNameProduct(2);
	
	var results = await Tickets.Where (t => (string.IsNullOrEmpty(statut) ? true : t.Statut == statut)
							  			 && (string.IsNullOrEmpty(nameProduct) ? true : t.ProduitSystemeExploitationVersion.Produit.Name == nameProduct))
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

public string SwitchNameProduct(int number)
{
	string nameProduct;
	switch (number)
	{
		case 1 : 
			nameProduct = "Maître des investissements";
			break;
		case 2 : 
			nameProduct = "Planificateur d’Anxiété Sociale";
			break;
		case 3 : 
			nameProduct = "Planificateur d’Entrainement";
			break;
		case 4 : 
			nameProduct = "Trader en herbe";
			break;
		default : 
			nameProduct = "";
			break;
	}
	return nameProduct;
}
