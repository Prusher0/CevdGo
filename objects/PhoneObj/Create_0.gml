/// @description Insert description here
// You can write your code in this editor
global.inst = instance_create_layer(x+15, y+25, "Mobile", StatsButton);
global.questButton = instance_create_layer(x+60, y+25, "Mobile", MissionsButton);
dd=0;
d=0;
global.turdToplandi = 0;
global.houseDialog = 0;
global.mushroomDialog = 0;
global.biogasDialog = 0;
global.controlpanelDialog = 0;
global.forestDialog = 0;
global.greenportalDialog = 0;
global.obeservatoryDialog = 0;
global.purpleportalDialog = 0;
global.recyclerDialog = 0;
global.redportalDialog = 0;
global.solarDialog = 0;
global.yellowportalDialog = 0;
dialogOn = 0;

msgHouse = [
	["Evim evim guzel evim !", "Cevdet", sImage1],
]

msgMushroom = [
	["Mantar xd", "Cevdet", sImage1],
]

msgBiogas = [
	["Gübreyi enerjiye çevirmenin harika bir yolu!", "Cevdet", sImage1],
]

msgControlpanel = [
	["Elimdeki teknolojiyle, enerjiyi her seyi gelistirmekte kullanabilirim.", "Cevdet", sImage1],
]

msgForestentry = [
	["Ormanin derinliklerinde bir hazine sakli...", "Cevdet", sImage1],
]

msgGreenportal = [
	["Edindigim bilgiye gore portalin arkasinda cevreye zarar veren bir fabrika var..", "Cevdet", sImage1],
]

msgObservatory = [
	["Buzullari gozlemlemenin kolay bir yolu. Gorev tamamladiktan sonra kontrol etmeliyim.", "Cevdet", sImage1],
]

msgPurpleportal = [
	["Simdilik bir gorev verilmedi.", "Cevdet", sImage1],
]

msgRecycler = [
	["Topladigim mantarlari ve taslari geri donusturup, enerjiye cevirebilirim.", "Cevdet", sImage1],
]

msgRedportal = [
	["Tehlikeli ve atesli bir yere cikiyor...", "Cevdet", sImage1],
]

msgSolar = [
	["Buraya gelip gunesten gelen temiz enerjiyi toplayabilirim!", "Cevdet", sImage1],
]

msgYellowportal = [
	["Simdilik bir gorev verilmedi.", "Cevdet", sImage1],
]



global.energyPnt = 0;

enum quests{
	elektrik_uret,
	yangin_sondur,	
	agac_dik
}
k=0;
z=0;
global.QuestArray= [
	["Boktan Elektrik Üret",0,["İnek Dışkılarını Toplamalısın","Dışkıları Metan Gazı Makinesine Koy","Başardın"],],
	[
		"Yangını Söndür",
		0,
		["İnsan Toplamalısın", "Başardın"],
	],
	["Ağaç Dik",0,["Çok Fazla Fidana İhtiyacın Var","Fidanları Dikmelisin","Başardın"],],
];
global.ds_quests = QuestDBScript(global.QuestArray);
global.ds_quests_number =ds_grid_height(global.ds_quests);
