enum quests{
	yangin_sondur,
	elektrik_uret,
	agac_dik
}
k=0;
z=0;
var QuestArray= [
	[
		"Yangını Söndür",
		0,
		["İnsan Toplamalısın", "Başardın"],
	],
	["Boktan Elektrik Üret",0,["Metan Gazı Santrali Kurmalısın","İnek Dışkılarını Toplamalısın","Başardın"],],
	["Ağaç Dik",0,["Çok Fazla Fidana İhtiyacın Var","Fidanları Dikmelisin","Başardın"],],
];
ds_quests = QuestDBScript(QuestArray);
ds_quests_number =ds_grid_height(ds_quests);
