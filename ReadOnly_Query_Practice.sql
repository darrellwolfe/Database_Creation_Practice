Select *
From CertValues

Select
c.lrsn,
c.PIN,
c.AIN,
c.GEO,
c.Cert_Total_Value,
p.ClassCD,
p.SitusCity


From CertValues AS c
Join ParcelMaster AS p ON c.lrsn=p.lrsn
Where c.Cert_Land <> 0
And p.SitusCity Is Not Null
Order By p.SitusCity;



