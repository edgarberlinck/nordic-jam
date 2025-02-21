module ProfileHelper
    # This list contains translation keys
    def country_list
        ['sweden', 'denamark', 'finland', 'norway']
    end

    # The following list contains actual names, no translation is required
    def sweden_city_list()
        'Goteborg,Stockholm'
    end

    def denamark_city_list()
        'Loirolandia,Racistalandia'
    end

    def finland_city_list()
        'Ninguem fala finlandês,Nem Linus Torvalds fala,Piroca de Loiro,Rola de Picolé'
    end

    def norway_city_list()
        'Loiro de Ricopolis,Eu queria conhecer um gay rico norueguês'
    end

    def city_of_country(country) 
        case country
        when 'sweden'
            sweden_city_list.split(',')
        when 'denamark'
            denamark_city_list.split(',')
        when 'finland'
            finland_city_list.split(',')
        when 'norway'
            norway_city_list.split(',')
        else
            []
        end
    end

end
