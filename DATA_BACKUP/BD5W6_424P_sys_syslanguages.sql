CREATE TABLE sys.syslanguages
(
    langid smallint NOT NULL,
    dateformat nchar(3) NOT NULL,
    datefirst tinyint NOT NULL,
    upgrade int,
    name nvarchar(128) NOT NULL,
    alias nvarchar(128) NOT NULL,
    months nvarchar(372),
    shortmonths nvarchar(132),
    days nvarchar(217),
    lcid int NOT NULL,
    msglangid smallint NOT NULL
);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (0, 'mdy', 7, 0, 'us_english', 'English', 'January,February,March,April,May,June,July,August,September,October,November,December', 'Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', 1033, 1033);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (1, 'dmy', 1, 0, 'Deutsch', 'German', 'Januar,Februar,März,April,Mai,Juni,Juli,August,September,Oktober,November,Dezember', 'Jan,Feb,Mär,Apr,Mai,Jun,Jul,Aug,Sep,Okt,Nov,Dez', 'Montag,Dienstag,Mittwoch,Donnerstag,Freitag,Samstag,Sonntag', 1031, 1031);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (2, 'dmy', 1, 0, 'Français', 'French', 'janvier,février,mars,avril,mai,juin,juillet,août,septembre,octobre,novembre,décembre', 'janv,févr,mars,avr,mai,juin,juil,août,sept,oct,nov,déc', 'lundi,mardi,mercredi,jeudi,vendredi,samedi,dimanche', 1036, 1036);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (3, 'ymd', 7, 0, '日本語', 'Japanese', '01,02,03,04,05,06,07,08,09,10,11,12', '01,02,03,04,05,06,07,08,09,10,11,12', '月曜日,火曜日,水曜日,木曜日,金曜日,土曜日,日曜日', 1041, 1041);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (4, 'dmy', 1, 0, 'Dansk', 'Danish', 'januar,februar,marts,april,maj,juni,juli,august,september,oktober,november,december', 'jan,feb,mar,apr,maj,jun,jul,aug,sep,okt,nov,dec', 'mandag,tirsdag,onsdag,torsdag,fredag,lørdag,søndag', 1030, 1030);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (5, 'dmy', 1, 0, 'Español', 'Spanish', 'Enero,Febrero,Marzo,Abril,Mayo,Junio,Julio,Agosto,Septiembre,Octubre,Noviembre,Diciembre', 'Ene,Feb,Mar,Abr,May,Jun,Jul,Ago,Sep,Oct,Nov,Dic', 'Lunes,Martes,Miércoles,Jueves,Viernes,Sábado,Domingo', 3082, 3082);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (6, 'dmy', 1, 0, 'Italiano', 'Italian', 'gennaio,febbraio,marzo,aprile,maggio,giugno,luglio,agosto,settembre,ottobre,novembre,dicembre', 'gen,feb,mar,apr,mag,giu,lug,ago,set,ott,nov,dic', 'lunedì,martedì,mercoledì,giovedì,venerdì,sabato,domenica', 1040, 1040);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (7, 'dmy', 1, 0, 'Nederlands', 'Dutch', 'januari,februari,maart,april,mei,juni,juli,augustus,september,oktober,november,december', 'jan,feb,mrt,apr,mei,jun,jul,aug,sep,okt,nov,dec', 'maandag,dinsdag,woensdag,donderdag,vrijdag,zaterdag,zondag', 1043, 1043);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (8, 'dmy', 1, 0, 'Norsk', 'Norwegian', 'januar,februar,mars,april,mai,juni,juli,august,september,oktober,november,desember', 'jan,feb,mar,apr,mai,jun,jul,aug,sep,okt,nov,des', 'mandag,tirsdag,onsdag,torsdag,fredag,lørdag,søndag', 2068, 2068);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (9, 'dmy', 7, 0, 'Português', 'Portuguese', 'janeiro,fevereiro,março,abril,maio,junho,julho,agosto,setembro,outubro,novembro,dezembro', 'jan,fev,mar,abr,mai,jun,jul,ago,set,out,nov,dez', 'segunda-feira,terça-feira,quarta-feira,quinta-feira,sexta-feira,sábado,domingo', 2070, 2070);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (10, 'dmy', 1, 0, 'Suomi', 'Finnish', 'tammikuuta,helmikuuta,maaliskuuta,huhtikuuta,toukokuuta,kesäkuuta,heinäkuuta,elokuuta,syyskuuta,lokakuuta,marraskuuta,joulukuuta', 'tammi,helmi,maalis,huhti,touko,kesä,heinä,elo,syys,loka,marras,joulu', 'maanantai,tiistai,keskiviikko,torstai,perjantai,lauantai,sunnuntai', 1035, 1035);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (11, 'ymd', 1, 0, 'Svenska', 'Swedish', 'januari,februari,mars,april,maj,juni,juli,augusti,september,oktober,november,december', 'jan,feb,mar,apr,maj,jun,jul,aug,sep,okt,nov,dec', 'måndag,tisdag,onsdag,torsdag,fredag,lördag,söndag', 1053, 1053);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (12, 'dmy', 1, 0, 'čeština', 'Czech', 'leden,únor,březen,duben,květen,červen,červenec,srpen,září,říjen,listopad,prosinec', 'I,II,III,IV,V,VI,VII,VIII,IX,X,XI,XII', 'pondělí,úterý,středa,čtvrtek,pátek,sobota,neděle', 1029, 1029);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (13, 'ymd', 1, 0, 'magyar', 'Hungarian', 'január,február,március,április,május,június,július,augusztus,szeptember,október,november,december', 'jan,febr,márc,ápr,máj,jún,júl,aug,szept,okt,nov,dec', 'hétfő,kedd,szerda,csütörtök,péntek,szombat,vasárnap', 1038, 1038);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (14, 'dmy', 1, 0, 'polski', 'Polish', 'styczeń,luty,marzec,kwiecień,maj,czerwiec,lipiec,sierpień,wrzesień,październik,listopad,grudzień', 'I,II,III,IV,V,VI,VII,VIII,IX,X,XI,XII', 'poniedziałek,wtorek,środa,czwartek,piątek,sobota,niedziela', 1045, 1045);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (15, 'dmy', 1, 0, 'română', 'Romanian', 'ianuarie,februarie,martie,aprilie,mai,iunie,iulie,august,septembrie,octombrie,noiembrie,decembrie', 'Ian,Feb,Mar,Apr,Mai,Iun,Iul,Aug,Sep,Oct,Nov,Dec', 'luni,marţi,miercuri,joi,vineri,sîmbătă,duminică', 1048, 1048);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (16, 'ymd', 1, 0, 'hrvatski', 'Croatian', 'siječanj,veljača,ožujak,travanj,svibanj,lipanj,srpanj,kolovoz,rujan,listopad,studeni,prosinac', 'sij,vel,ožu,tra,svi,lip,srp,kol,ruj,lis,stu,pro', 'ponedjeljak,utorak,srijeda,četvrtak,petak,subota,nedjelja', 1050, 1050);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (17, 'dmy', 1, 0, 'slovenčina', 'Slovak', 'január,február,marec,apríl,máj,jún,júl,august,september,október,november,december', 'I,II,III,IV,V,VI,VII,VIII,IX,X,XI,XII', 'pondelok,utorok,streda,štvrtok,piatok,sobota,nedeľa', 1051, 1051);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (18, 'dmy', 1, 0, 'slovenski', 'Slovenian', 'januar,februar,marec,april,maj,junij,julij,avgust,september,oktober,november,december', 'jan,feb,mar,apr,maj,jun,jul,avg,sept,okt,nov,dec', 'ponedeljek,torek,sreda,četrtek,petek,sobota,nedelja', 1060, 1060);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (19, 'dmy', 1, 0, 'ελληνικά', 'Greek', 'Ιανουαρίου,Φεβρουαρίου,Μαρτίου,Απριλίου,Μα_ου,Ιουνίου,Ιουλίου,Αυγούστου,Σεπτεμβρίου,Οκτωβρίου,Νοεμβρίου,Δεκεμβρίου', 'Ιαν,Φεβ,Μαρ,Απρ,Μαϊ,Ιουν,Ιουλ,Αυγ,Σεπ,Οκτ,Νοε,Δεκ', 'Δευτέρα,Τρίτη,Τετάρτη,Πέμπτη,Παρασκευή,Σάββατο,Κυριακή', 1032, 1032);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (20, 'dmy', 1, 0, 'български', 'Bulgarian', 'януари,февруари,март,апвил,май,юни,юли,август,септември,октомври,ноември,декември', 'януари,февруари,март,април,май,юни,юли,август,септември,октомври,ноември,декември', 'понеделник,вторник,сряда,четвъвтък,петък,събота,неделя', 1026, 1026);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (21, 'dmy', 1, 0, 'русский', 'Russian', 'Январь,Февраль,Март,Апрель,Май,Июнь,Июль,Август,Сентябрь,Октябрь,Ноябрь,Декабрь', 'янв,фев,мар,апр,май,июн,июл,авг,сен,окт,ноя,дек', 'понедельник,вторник,среда,четверг,пятница,суббота,воскресенье', 1049, 1049);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (22, 'dmy', 1, 0, 'Türkçe', 'Turkish', 'Ocak,Şubat,Mart,Nisan,Mayıs,Haziran,Temmuz,Ağustos,Eylül,Ekim,Kasım,Aralık', 'Oca,Şub,Mar,Nis,May,Haz,Tem,Ağu,Eyl,Eki,Kas,Ara', 'Pazartesi,Salı,Çarşamba,Perşembe,Cuma,Cumartesi,Pazar', 1055, 1055);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (23, 'dmy', 1, 0, 'British', 'British English', 'January,February,March,April,May,June,July,August,September,October,November,December', 'Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', 2057, 1033);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (24, 'dmy', 1, 0, 'eesti', 'Estonian', 'jaanuar,veebruar,märts,aprill,mai,juuni,juuli,august,september,oktoober,november,detsember', 'jaan,veebr,märts,apr,mai,juuni,juuli,aug,sept,okt,nov,dets', 'esmaspäev,teisipäev,kolmapäev,neljapäev,reede,laupäev,pühapäev', 1061, 1061);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (25, 'ymd', 1, 0, 'latviešu', 'Latvian', 'janvāris,februāris,marts,aprīlis,maijs,jūnijs,jūlijs,augusts,septembris,oktobris,novembris,decembris', 'jan,feb,mar,apr,mai,jūn,jūl,aug,sep,okt,nov,dec', 'pirmdiena,otrdiena,trešdiena,ceturtdiena,piektdiena,sestdiena,svētdiena', 1062, 1062);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (26, 'ymd', 1, 0, 'lietuvių', 'Lithuanian', 'sausis,vasaris,kovas,balandis,gegužė,birželis,liepa,rugpjūtis,rugsėjis,spalis,lapkritis,gruodis', 'sau,vas,kov,bal,geg,bir,lie,rgp,rgs,spl,lap,grd', 'pirmadienis,antradienis,trečiadienis,ketvirtadienis,penktadienis,šeštadienis,sekmadienis', 1063, 1063);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (27, 'dmy', 7, 0, 'Português (Brasil)', 'Brazilian', 'Janeiro,Fevereiro,Março,Abril,Maio,Junho,Julho,Agosto,Setembro,Outubro,Novembro,Dezembro', 'Jan,Fev,Mar,Abr,Mai,Jun,Jul,Ago,Set,Out,Nov,Dez', 'Segunda-Feira,Terça-Feira,Quarta-Feira,Quinta-Feira,Sexta-Feira,Sábado,Domingo', 1046, 1046);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (28, 'ymd', 7, 0, '繁體中文', 'Traditional Chinese', '一月,二月,三月,四月,五月,六月,七月,八月,九月,十月,十一月,十二月', '01,02,03,04,05,06,07,08,09,10,11,12', '星期一,星期二,星期三,星期四,星期五,星期六,星期日', 1028, 1028);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (29, 'ymd', 7, 0, '한국어', 'Korean', '01,02,03,04,05,06,07,08,09,10,11,12', '01,02,03,04,05,06,07,08,09,10,11,12', '월요일,화요일,수요일,목요일,금요일,토요일,일요일', 1042, 1042);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (30, 'ymd', 7, 0, '简体中文', 'Simplified Chinese', '01,02,03,04,05,06,07,08,09,10,11,12', '01,02,03,04,05,06,07,08,09,10,11,12', '星期一,星期二,星期三,星期四,星期五,星期六,星期日', 2052, 2052);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (31, 'dmy', 1, 0, 'Arabic', 'Arabic', 'Muharram,Safar,Rabie I,Rabie II,Jumada I,Jumada II,Rajab,Shaaban,Ramadan,Shawwal,Thou Alqadah,Thou Alhajja', 'Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', 1025, 1025);
INSERT INTO sys.syslanguages (langid, dateformat, datefirst, upgrade, name, alias, months, shortmonths, days, lcid, msglangid) VALUES (32, 'dmy', 7, 0, 'ไทย', 'Thai', 'มกราคม,กุมภาพันธ์,มีนาคม,เมษายน,พฤษภาคม,มิถุนายน,กรกฎาคม,สิงหาคม,กันยายน,ตุลาคม,พฤศจิกายน,ธันวาคม', 'ม.ค.,ก.พ.,มี.ค.,เม.ย.,พ.ค.,มิ.ย.,ก.ค.,ส.ค.,ก.ย.,ต.ค.,พ.ย.,ธ.ค.', 'จันทร์,อังคาร,พุธ,พฤหัสบดี,ศุกร์,เสาร์,อาทิตย์', 1054, 1054);