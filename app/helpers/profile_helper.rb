module ProfileHelper
    # This list contains translation keys
    def country_list
        ['sweden','denmark','finland','norway']
    end

    # The following list contains actual names, no translation is required
    def sweden_city_list()
        'Stockholm,Göteborg,Malmö,Uppsala,Västerås,Örebro,Linköping,Helsingborg,Jönköping,Norrköping,Lund,Umeå,Gävle,Borås,Eskilstuna,Södertälje,Karlstad,Täby,Växjö,Halmstad,Sundsvall,Luleå,Trollhättan,Östersund,Borlänge,Trelleborg,Kristianstad,Kalmar,Skövde,Karlskrona,Falun,Örnsköldsvik,Uddevalla,Varberg,Motala,Lidköping,Piteå,Åkersberga,Märsta,Sandviken,Visby,Kungälv,Kungsbacka,Falkenberg,Landskrona,Vänersborg,Alingsås,Lerum,Nässjö,Falköping,Eslöv,Ystad,Vetlanda,Huskvarna,Strängnäs,Värnamo,Åmål,Västervik,Sala,Kiruna,Katrineholm,Enköping,Kristinehamn,Hudiksvall,Avesta,Mora,Bollnäs,Lidingö,Nyköping,Karlskoga,Arvika,Sundbyberg,Nynäshamn,Tumba,Fagersta,Säffle,Skellefteå,Oxelösund,Ljusdal,Ängelholm,Solna,Knivsta,Bålsta,Haparanda,Tranås,Sigtuna,Vimmerby,Ronneby,Båstad,Hallstahammar,Sölvesborg,Hedemora,Åstorp,Kramfors,Lycksele,Nora,Ludvika,Älmhult,Finspång,Hjo,Gnesta,Filipstad,Torshälla,Mjölby,Vansbro,Tierp,Hofors,Munkfors,Arboga,Kungsör,Köping,Oskarshamn,Smålandsstenar,Tomelilla,Åhus,Strömstad,Tidaholm,Valdemarsvik,Vaxholm,Ulricehamn,Svedala,Skurup,Höganäs,Laholm,Bjurholm,Surahammar,Älvsbyn,Ånge,Vaggeryd,Askersund,Mariestad,Östhammar,Nybro,Gislaved,Emmaboda,Bromölla,Hagfors,Torsby,Bräcke,Storuman,Sorsele,Jokkmokk,Pajala,Övertorneå,Hällefors,Kil,Gullspång,Ödeshög,Degerfors,Laxå,Markaryd,Lessebo,Uppvidinge,Tingsryd,Gagnef,Rättvik,Malung,Älvdalen,Kalix,Boden,Överkalix'
    end

    def denmark_city_list()
        'København,Aarhus,Odense,Aalborg,Esbjerg,Randers,Kolding,Horsens,Vejle,Roskilde,Herning,Hørsholm,Helsingør,Silkeborg,Næstved,Fredericia,Ballerup,Skive,Holstebro,Slagelse,Taastrup,Hjørring,Haderslev,Skanderborg,Viborg,Køge,Frederikshavn,Nyborg,Svendborg,Birkerød,Rønne,Thisted,Hillerød,Holbæk,Glostrup,Kalundborg,Fredensborg,Nykøbing Falster,Nykøbing Mors,Brønderslev,Grenaa,Middelfart,Skælskør,Ringsted,Fakse,Stenløse,Sorø,Lemvig,Grindsted,Varde,Aabenraa,Farum,Værløse,Frederikssund,Dragør,Hinnerup,Tønder,Ikast,Charlottenlund,Bogense,Ebeltoft,Maribo,Helsinge,Gentofte,Løgstør,Nørresundby,Assens,Hammel,Ølstykke,Lynge,Nexø,Gilleleje,Hobro,Skagen,Sakskøbing,Nivå,Brovst,Padborg,Struer,Løgumkloster,Vordingborg,Rødekro,Fjerritslev,Aars,Bramming,Nakskov,Hadsund,Sønderborg,Sundby,Dronninglund,Tranbjerg,Brande,Langeskov,Ribe,Præstø,Fanø,Herlev,Lillerød,Vedbæk,Bagsværd'
    end

    def finland_city_list()
        'Helsinki,Espoo,Tampere,Vantaa,Oulu,Turku,Jyväskylä,Lahti,Kuparsaari,Kuopio,Pori,Kouvola,Joensuu,Lappeenranta,Hämeenlinna,Vaasa,Seinäjoki,Rovaniemi,Mikkeli,Rauma,Porvoo,Kokkola,Kajaani,Järvenpää,Hyvinkää,Nurmijärvi,Lohja,Kerava,Kotka,Salo,Imatra,Raahe,Siilinjärvi,Pietarsaari,Ylöjärvi,Kangasala,Kemi,Iisalmi,Raisio,Varkaus,Hamina,Valkeakoski,Naantali,Kristiinankaupunki,Savonlinna,Kauhava,Äänekoski,Kerimäki,Keuruu,Orimattila,Alajärvi,Laitila,Nivala,Kiuruvesi,Pudasjärvi,Pyhäjärvi,Karkkila,Mänttä-Vilppula,Haapajärvi,Haapavesi,Lapua,Loimaa,Sotkamo,Kuhmo,Kiiminki,Uusikaupunki,Parainen,Kemiönsaari,Ilmajoki,Virrat,Punkalaidun,Soini,Juuka,Kaustinen,Pedersöre,Muhos,Hollola,Janakkala,Hausjärvi,Hartola,Juva,Lemi,Luumäki,Taipalsaari,Tohmajärvi,Ilomantsi,Kuhmoinen,Multia,Petäjävesi,Vesilahti,Ypäjä,Karvia,Merikarvia,Kaskinen,Närpiö,Orivesi,Pyhäranta,Kinnula,Konnevesi,Korppoo,Raasepori,Sauvo,Sysmä,Teuva,Vimpeli,Vörå'
    end

    def norway_city_list()
        'Oslo,Bergen,Trondheim,Stavanger,Drammen,Fredrikstad,Kristiansand,Sandnes,Tromsø,Skien,Ålesund,Haugesund,Tønsberg,Moss,Porsgrunn,Bodø,Arendal,Hamar,Ytrebygda,Lillehammer,Gjøvik,Harstad,Halden,Larvik,Kongsberg,Molde,Horten,Gjørvik,Askøy,Mo i Rana,Kristiansund,Steinkjer,Elverum,Alta,Narvik,Hønefoss,Sarpsborg,Egersund,Kongsvinger,Florø,Førde,Levanger,Notodden,Risør,Røros,Vadsø,Vardø,Svelvik,Brekstad,Farsund,Flekkefjord,Grimstad,Holmestrand,Kopervik,Lillesand,Mandal,Namsos,Råholt,Brumunddal,Orkanger,Sogndal,Sortland,Stjørdal,Strømmen,Tvedestrand,Ulsteinvik,Volda,Åndalsnes,Ørsta,Førde,Sandvika,Bryne,Leknes,Kirkenes,Lillestrøm,Åkrehamn,Stavern,Drøbak,Svelgen,Båtsfjord,Hammerfest,Kolvereid,Kopervik,Lørenskog,Odda,Rakkestad,Stange,Vennesla,Voss,Ørnes,Sandnessjøen,Svelvik,Vikebygd'
    end

    def city_of_country(country) 
        case country
        when 'sweden'
            sweden_city_list.split(',')
        when 'denmark'
            denmark_city_list.split(',')
        when 'finland'
            finland_city_list.split(',')
        when 'norway'
            norway_city_list.split(',')
        else
            []
        end
    end

end
