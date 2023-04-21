//
//  Product.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 21.04.2023.
//

struct Product {
    let name: String
    let brand: Brand
    let group: Group
    let price: String
    let description: String
    let documentation: String
    
    var fullName: String {
        "\(brand.rawValue) \(name)"
    }
    
    static func getProducts() -> [[Product]] {
        [
                // MARK: - Varnishes
            [
                Product(
                    name: "Autoclear Plus HS 1 л",
                    brand: .sikkens,
                    group: .varnish,
                    price: "2405 Р",
                    description: """
                            376960 Autoclear Plus HS 1 л
                        
                            Двухкомпонентный лак с большой толщиной пленки, подходящий для выполнения различных видов работ.
                            Лак имеет великолепный розлив и блеск при нанесении его на двухстадийныe и трехстадийные системы базовых покрытий Sikkens.
                        """,
                    documentation: "https://disk.yandex.ru/i/7xrMnc9RxhazHw"
                ),
                Product(
                    name: "Autoclear Plus HS 5 л",
                    brand: .sikkens,
                    group: .varnish,
                    price: "11070 Р",
                    description: """
                            376960 Autoclear Plus HS 5 л
                        
                            Двухкомпонентный лак с большой толщиной пленки, подходящий для выполнения различных видов работ.
                            Лак имеет великолепный розлив и блеск при нанесении его на двухстадийныe и трехстадийные системы базовых покрытий Sikkens.
                        """,
                    documentation: "https://disk.yandex.ru/i/7xrMnc9RxhazHw"
                ),
                Product(
                    name: "Autoclear Basiq HS 5 л",
                    brand: .sikkens,
                    group: .varnish,
                    price: "9200 Р",
                    description: """
                            376061 Autoclear Basiq HS 5 л
                        
                            Двухкомпонентный лак, созданный для работы со всеми видами базовых покрытий Sikkens.
                        """,
                    documentation: "https://disk.yandex.ru/i/rk-C2TUY15voIA"
                ),
                Product(
                    name: "2K HS Extra Clear 5 л",
                    brand: .lesonal,
                    group: .varnish,
                    price: "12925 Р",
                    description: """
                            376895 2K HS Extra Clear 5 л
                        
                            Двухкомпонентный лак, предназначенный для всех типов ремонтов.
                            Дает высококачественные результаты с высоким глянцем при практичной цене.
                        """,
                    documentation: "https://disk.yandex.ru/i/Rpj2tSFB-xxkNw"
                ),
                Product(
                    name: "810 Clear AS 1 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "1750 Р",
                    description: """
                            560946 810 Clear AS 1 л
                        
                            Используя лак Wanda 810 Clear AS Вы получаете превосходный блеск ремонтного покрытия.
                            Этот продукт относится к лакам с повышенной стойкостью к царапинам и может быть применен как для локального ремонта, так и для окраски полного кузова автомобиля при любой температуре.
                            Данный продукт очень легко наносится, быстро сохнет и дает уникальный блеск готовому изделию.
                        """,
                    documentation: "https://disk.yandex.ru/i/0Mh03TNsFAEhaw"
                ),
                Product(
                    name: "810 Clear AS 5 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "7780 Р",
                    description: """
                            560947 810 Clear AS 5 л
                        
                            Используя лак Wanda 810 Clear AS Вы получаете превосходный блеск ремонтного покрытия.
                            Этот продукт относится к лакам с повышенной стойкостью к царапинам и может быть применен как для локального ремонта, так и для окраски полного кузова автомобиля при любой температуре.
                            Данный продукт очень легко наносится, быстро сохнет и дает уникальный блеск готовому изделию.
                        """,
                    documentation: "https://disk.yandex.ru/i/0Mh03TNsFAEhaw"
                ),
                Product(
                    name: "820 Clear AS Express 1 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "1656 Р",
                    description: """
                            560939 820 Clear AS Express 1 л
                        
                            Лак Wanda 820 Clear AS Express создан для ускорения процесса ремонта.
                            Этот эластичный лак с повышенной стойкостью к царапинам идеально подходит для быстрого ремонта.
                            Данный продукт обеспечивает высокую скорость сушки, легко полируется и сохраняет отличней вид во время эксплуатации автомобиля.
                        """,
                    documentation: "https://disk.yandex.ru/i/0LPQYX8JEmzYig"
                ),
                Product(
                    name: "820 Clear AS Express 5 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "7347 Р",
                    description: """
                            560940 820 Clear AS Express 5 л
                        
                            Лак Wanda 820 Clear AS Express создан для ускорения процесса ремонта.
                            Этот эластичный лак с повышенной стойкостью к царапинам идеально подходит для быстрого ремонта.
                            Данный продукт обеспечивает высокую скорость сушки, легко полируется и сохраняет отличней вид во время эксплуатации автомобиля.
                        """,
                    documentation: "https://disk.yandex.ru/i/0LPQYX8JEmzYig"
                ),
                Product(
                    name: "850 Clear Easy 1 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "1344 Р",
                    description: """
                            560931 850 Clear Easy 1 л
                        
                            Двухкомпонентный лак превосходно работает в сочетании с базовым покрытием Wanda Basecoats MAX.
                            Этот продукт обладает высокой стойкостью к царапинам, имеет великолепный блеск и хорошую растекаемость.
                        """,
                    documentation: "https://disk.yandex.ru/i/ZEd1JZDm-zM4eA"
                ),
                Product(
                    name: "850 Clear Easy 5 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "5855 Р",
                    description: """
                            560932 850 Clear Easy 5 л
                        
                            Двухкомпонентный лак превосходно работает в сочетании с базовым покрытием Wanda Basecoats MAX.
                            Этот продукт обладает высокой стойкостью к царапинам, имеет великолепный блеск и хорошую растекаемость.
                        """,
                    documentation: "https://disk.yandex.ru/i/ZEd1JZDm-zM4eA"
                ),
                Product(
                    name: "860 Clear AS HS 1 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "1767 Р",
                    description: """
                            560962 860 Clear AS HS 1 л
                        
                            Двухкомпонентный лак превосходно работает в сочетании с базовым покрытием Wanda Basecoats MAX.
                            Этот продукт обладает высокой стойкостью к царапинам, имеет великолепный блеск и хорошую растекаемость.
                        """,
                    documentation: "https://disk.yandex.ru/i/x5MBwHptgkrJSQ"
                ),
                Product(
                    name: "860 Clear AS HS 5 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "7707 Р",
                    description: """
                            569694 860 Clear AS HS 5 л
                        
                            Двухкомпонентный лак превосходно работает в сочетании с базовым покрытием Wanda Basecoats MAX.
                            Этот продукт обладает высокой стойкостью к царапинам, имеет великолепный блеск и хорошую растекаемость.
                        """,
                    documentation: "https://disk.yandex.ru/i/x5MBwHptgkrJSQ"
                ),
                Product(
                    name: "830 Clear Matt 1 л",
                    brand: .wanda,
                    group: .varnish,
                    price: "1785 Р",
                    description: """
                            560953 830 Clear Matt 1 л
                        
                            Wanda 830 Clear Matt двухкомпонентный матовый лак, идеальный вариант для воспроизведения матовых покрытий используемых при окраске пластиковых деталей автомобиля и интерьерных накладок салона автомобиля.
                            Этот лак может быть использован в чистом виде или в комбинации с прозрачными лаками Wanda для получения необходимого уровня глянца.
                            Варианты комбинаций отвердителей и растворителей Wanda делают возможным применение лака в различных температурных условиях.
                        """,
                    documentation: "https://disk.yandex.ru/i/EVvCfzaDKPPGBA"
                )
            ],
                // MARK: - Primers
            [
                Product(
                    name: "Spotprimer Grey 0.4 л",
                    brand: .sikkens,
                    group: .primer,
                    price: "888 Р",
                    description: """
                            376941 Spot Pimer Grey (Aerosol) 0.4 л
                        
                            Однокомпонентный грунт-выравниватель серого цвета в аэрозольной упаковке с высокой скоростью сушки, созданный для нанесения на небольшие участки поверхности, где есть прошлифованная поверхность покрытия.
                            Этот грунт может быть применен в автомобильном ремонте.
                        """,
                    documentation: "https://disk.yandex.ru/i/haYrghdFzv4zbQ"
                ),
                Product(
                    name: "1K ALL Plastics Primer 1 л",
                    brand: .sikkens,
                    group: .primer,
                    price: "2782 Р",
                    description: """
                            376059 1K All Plastics Primer 1 л
                            
                            Быстросохнущий, однокомпонентный адгезионный грунт, применяемый для окраски автомобильных деталей произведенных из пластмассы.
                        """,
                    documentation: "https://disk.yandex.ru/i/yvHkIEqcTEwVjg"
                ),
                Product(
                    name: "Colorbuild Plus White 3 л",
                    brand: .sikkens,
                    group: .primer,
                    price: "9855 Р",
                    description: """
                            376869 Colorbuild Plus Black 3 л
                            
                            Система Colorbuild Plus состоит из шести цветных грунтов, которые, при смешении друг с другом в определенной пропорции, обеспечивают получение цвета, наиболее близко соответствующего цвету отделочного покрытия.
                            В зависимости от пропорций разведения, Colorbuild Plus может быть использован в шлифуемой и в нешлифуемой версиях нанесения.
                        """,
                    documentation: "https://disk.yandex.ru/i/hXdMzRyQ9mea6Q"
                ),
                Product(
                    name: "Colorbuild Plus Black 3 л",
                    brand: .sikkens,
                    group: .primer,
                    price: "9855 Р",
                    description: """
                           376871 Colorbuild Plus Black 3 л
                        
                           Система Colorbuild Plus состоит из шести цветных грунтов, которые, при смешении друг с другом в определенной пропорции, обеспечивают получение цвета, наиболее близко соответствующего цвету отделочного покрытия.
                            В зависимости от пропорций разведения, Colorbuild Plus может быть использован в шлифуемой и в нешлифуемой версиях нанесения.
                        """,
                    documentation: "https://disk.yandex.ru/i/hXdMzRyQ9mea6Q"
                ),
                Product(
                    name: "Autosurfacer HB 3 л",
                    brand: .sikkens,
                    group: .primer,
                    price: "6848 Р",
                    description: """
                            376911 Autosurfacer HB 3 л
                            
                            Двухкомпонентный грунт-выравниватель с высокой скоростью сушки и большой толщиной сухого слоя.
                            Он имеет только шлифуемую версию, может быть применен в стандартном и локальном ремонте.
                        """,
                    documentation: "https://disk.yandex.ru/i/Yv9zSv69pjG-dQ"
                ),
                Product(
                    name: "Washprimer 1K CF-EF 1 л",
                    brand: .sikkens,
                    group: .primer,
                    price: "2809 Р",
                    description: """
                            376051 Washprimer 1K CF-EF 1 л
                        
                            Однокомпонентный, быстросохнущий, первичный травящий грунт Washprimer 1K CF предназначен для использования в промышленности и в авторемонтном производстве.
                            Обеспечивает высочайший уровень коррозионной защиты металла и прекрасную адгезию наносимых впоследствии лакокрасочных материалов.
                        """,
                    documentation: "https://disk.yandex.ru/i/0qJg5Kb-dGvfJA"
                ),
                Product(
                    name: "1K Multi Plastic Primer 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "3402 Р",
                    description: """
                            376918 1K Multi Plastic Primer 1 л
                        
                            Однокомпонентный грунт, воздушной сушки разработанный для создания адгезии при окраске автомобильных деталей сделанных из различных типов пластика.
                        """,
                    documentation: "https://disk.yandex.ru/i/W1t3LT32YL-IPQ"
                ),
                Product(
                    name: "2K Epoxy Primer 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "2600 Р",
                    description: """
                            376929 2K Epoxy Primer 1 л
                        
                            Грунт 2K Lesonal Epoxy Primer - Двухкомпонентный эпоксидный грунт, не содержащий хроматов, подходит для окраски автомобилей, шасси и небольшого коммерческого транспорта.
                            Великолепная основа для нанесения полиэфирных шпатлевок и жидкой шпатлевки, при выполнении работ по реставрации автомобилей, окраски новых и ремонтных панелей.
                            Эпоксидный грунт дает хорошую химическую и антикоррозионную защиту металла.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "1K Etch Primer 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "2474 Р",
                    description: """
                            376928 1K Etch Primer 1 л
                        
                            Безхроматный травящий грунт, используемый при окраске автомобилей и грузовых транспортных средств.
                        """,
                    documentation: "https://disk.yandex.ru/i/vHvqAHeAVn5ORw"
                ),
                Product(
                    name: "2K High Build Filler White 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "2280 Р",
                    description: """
                            376924 2K High Build Filler White 1 л
                        
                            Двухкомпонентный грунт-выравниватель с большой толщиной пленки и отличными наполняющими свойствами, предназначен для использования в ремонте легковых машин и легкого коммерческого транспорта.
                        """,
                    documentation: "https://disk.yandex.ru/i/zqIYmvJAT7nWAw"
                ),
                Product(
                    name: "2K High Build Filler Grey 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "2280 Р",
                    description: """
                            376892 2K High Build Filler Grey 1 л
                        
                            Двухкомпонентный грунт-выравниватель с большой толщиной пленки и отличными наполняющими свойствами, предназначен для использования в ремонте легковых машин и легкого коммерческого транспорта.
                        """,
                    documentation: "https://disk.yandex.ru/i/zqIYmvJAT7nWAw"
                ),
                Product(
                    name: "2K High Build Filler Black 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "2280 Р",
                    description: """
                            376922 2K High Build Filler Black 1 л
                        
                            Двухкомпонентный грунт-выравниватель с большой толщиной пленки и отличными наполняющими свойствами, предназначен для использования в ремонте легковых машин и легкого коммерческого транспорта.
                        """,
                    documentation: "https://disk.yandex.ru/i/zqIYmvJAT7nWAw"
                ),
                Product(
                    name: "2K Filler 540 White 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "2863 Р",
                    description: """
                            376877 2K Filler 540 White 1 л
                        
                            Двухкомпонентный грунт-выравниватель, предназначен для применения в ремонтной окраске легкового и малого грузового транспорта.
                            Используя различные пропорции смешивания, грунт-выравниватель Lesonal 2K Filler 540 может быть применен в шлифуемой версии со средней толщиной пленки или в нешлифуемой версии, с меньшей толщиной пленки.
                            Доступен в белом, сером и черном варианте, что позволяет достичь максимальной укрывистости системы.
                        """,
                    documentation: "https://disk.yandex.ru/i/Jnc8gg9Xm_gGmA"
                ),
                Product(
                    name: "2K Filler 540 Grey 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "2863 Р",
                    description: """
                            376878 2K Filler 540 Grey 1 л
                        
                            Двухкомпонентный грунт-выравниватель, предназначен для применения в ремонтной окраске легкового и малого грузового транспорта.
                            Используя различные пропорции смешивания, грунт-выравниватель Lesonal 2K Filler 540 может быть применен в шлифуемой версии со средней толщиной пленки или в нешлифуемой версии, с меньшей толщиной пленки.
                            Доступен в белом, сером и черном варианте, что позволяет достичь максимальной укрывистости системы.
                        """,
                    documentation: "https://disk.yandex.ru/i/Jnc8gg9Xm_gGmA"
                ),
                Product(
                    name: "2K Filler 540 Black 1 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "2863 Р",
                    description: """
                            377169 2K Filler 540 Black 1 л
                        
                            Двухкомпонентный грунт-выравниватель, предназначен для применения в ремонтной окраске легкового и малого грузового транспорта.
                            Используя различные пропорции смешивания, грунт-выравниватель Lesonal 2K Filler 540 может быть применен в шлифуемой версии со средней толщиной пленки или в нешлифуемой версии, с меньшей толщиной пленки.
                            Доступен в белом, сером и черном варианте, что позволяет достичь максимальной укрывистости системы.
                        """,
                    documentation: "https://disk.yandex.ru/i/Jnc8gg9Xm_gGmA"
                ),
                Product(
                    name: "2K Filler 540 White 3 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "8024 Р",
                    description: """
                            376874 2K Filler 540 White 3 л
                        
                            Двухкомпонентный грунт-выравниватель, предназначен для применения в ремонтной окраске легкового и малого грузового транспорта.
                            Используя различные пропорции смешивания, грунт-выравниватель Lesonal 2K Filler 540 может быть применен в шлифуемой версии со средней толщиной пленки или в нешлифуемой версии, с меньшей толщиной пленки.
                            Доступен в белом, сером и черном варианте, что позволяет достичь максимальной укрывистости системы.
                        """,
                    documentation: "https://disk.yandex.ru/i/Jnc8gg9Xm_gGmA"
                ),
                Product(
                    name: "2K Filler 540 Grey 3 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "8024 Р",
                    description: """
                            376875 2K Filler 540 Grey 3 л
                        
                            Двухкомпонентный грунт-выравниватель, предназначен для применения в ремонтной окраске легкового и малого грузового транспорта.
                            Используя различные пропорции смешивания, грунт-выравниватель Lesonal 2K Filler 540 может быть применен в шлифуемой версии со средней толщиной пленки или в нешлифуемой версии, с меньшей толщиной пленки.
                            Доступен в белом, сером и черном варианте, что позволяет достичь максимальной укрывистости системы.
                        """,
                    documentation: "https://disk.yandex.ru/i/Jnc8gg9Xm_gGmA"
                ),
                Product(
                    name: "2K Filler 540 Black 3 л",
                    brand: .lesonal,
                    group: .primer,
                    price: "8024 Р",
                    description: """
                            376876 2K Filler 540 Black 3 л
                        
                            Двухкомпонентный грунт-выравниватель, предназначен для применения в ремонтной окраске легкового и малого грузового транспорта.
                            Используя различные пропорции смешивания, грунт-выравниватель Lesonal 2K Filler 540 может быть применен в шлифуемой версии со средней толщиной пленки или в нешлифуемой версии, с меньшей толщиной пленки.
                            Доступен в белом, сером и черном варианте, что позволяет достичь максимальной укрывистости системы.
                        """,
                    documentation: "https://disk.yandex.ru/i/Jnc8gg9Xm_gGmA"
                ),
                Product(
                    name: "610 1K Plastic Primer 1 л",
                    brand: .wanda,
                    group: .primer,
                    price: "1478 Р",
                    description: """
                            560965 610 1K Plastic Primer 1 л
                        
                            Быстросохнущий однокомпонентный адгезионный грунт, созданный для ремонта пластиковых деталей автомобиля.
                        """,
                    documentation: "https://disk.yandex.ru/i/LQJsztKa13LeWQ"
                ),
                Product(
                    name: "610 1K Plastic Primer RTS 0.4 л",
                    brand: .wanda,
                    group: .primer,
                    price: "888 Р",
                    description: """
                            560966 610 1K Plastic Primer RTS 0.4 л
                        
                            Быстросохнущий однокомпонентный адгезионный грунт, созданный для ремонта пластиковых деталей автомобиля.
                        """,
                    documentation: "https://disk.yandex.ru/i/LQJsztKa13LeWQ"
                ),
                Product(
                    name: "620 Primer Light Grey 0.4 л",
                    brand: .wanda,
                    group: .primer,
                    price: "812 Р",
                    description: """
                            560968 620 Primer Light Grey 0.4 л (аэрозоль)
                        
                            Универсальный быстросохнущий грунт в аэрозольной упаковке, специально создан для нанесения на прошлифованные места.
                            Грунт доступен в светло-сером и темно-сером цветах для оптимальной укрывистости финишного покрытия.
                        """,
                    documentation: "https://disk.yandex.ru/i/Vf_MLgVUIuzzXw"
                ),
                Product(
                    name: "620 Primer Dark Grey 0.4 л",
                    brand: .wanda,
                    group: .primer,
                    price: "812 Р",
                    description: """
                            560970 620 Primer Dark Grey 0.4 л (аэрозоль)
                        
                            Универсальный быстросохнущий грунт в аэрозольной упаковке, специально создан для нанесения на прошлифованные места.
                            Грунт доступен в светло-сером и темно-сером цветах для оптимальной укрывистости финишного покрытия.
                        """,
                    documentation: "https://disk.yandex.ru/i/Vf_MLgVUIuzzXw"
                ),
                Product(
                    name: "630 2K Epoxy Primer 1 л",
                    brand: .wanda,
                    group: .primer,
                    price: "1788 Р",
                    description: """
                            561003 630 2K Epoxy Primer 1 л
                        
                            Двухкомпонентный эпоксидный грунт, который обладает идеальной защитой от коррозии и может быть использован при ремонте легкового и лёгкого коммерческого транспорта.
                        """,
                    documentation: "https://disk.yandex.ru/i/-pgjm97skYbsDw"
                ),
                Product(
                    name: "640 Filler Multi White 3 л",
                    brand: .wanda,
                    group: .primer,
                    price: "6228 Р",
                    description: """
                            561008 640 Filler Multi White 3 л
                        
                            Двухкомпонентный грунт-выравниватель, соответствующий стандартам VOC, который может быть применен в шлифуемой и нешлифуемой версии нанесения.
                            Этот продукт имеет три цвета: черный, серый и белый для получения оптимальной укривистости отделочных покрытий.
                        """,
                    documentation: "https://disk.yandex.ru/i/RpngkQSDgA9dvg"
                ),
                Product(
                    name: "640 Filler Multi Grey 3 л",
                    brand: .wanda,
                    group: .primer,
                    price: "6228 Р",
                    description: """
                            561008 640 Filler Multi Grey 3 л
                        
                            Двухкомпонентный грунт-выравниватель, соответствующий стандартам VOC, который может быть применен в шлифуемой и нешлифуемой версии нанесения.
                            Этот продукт имеет три цвета: черный, серый и белый для получения оптимальной укривистости отделочных покрытий.
                        """,
                    documentation: "https://disk.yandex.ru/i/RpngkQSDgA9dvg"
                ),
                Product(
                    name: "640 Filler Multi Black 3 л",
                    brand: .wanda,
                    group: .primer,
                    price: "6228 Р",
                    description: """
                            561012 640 Filler Multi Black 3 л
                        
                            Двухкомпонентный грунт-выравниватель, соответствующий стандартам VOC, который может быть применен в шлифуемой и нешлифуемой версии нанесения.
                            Этот продукт имеет три цвета: черный, серый и белый для получения оптимальной укривистости отделочных покрытий.
                        """,
                    documentation: "https://disk.yandex.ru/i/RpngkQSDgA9dvg"
                ),
                Product(
                    name: "660 1K Etch Primer 0.4 л",
                    brand: .wanda,
                    group: .primer,
                    price: "952 Р",
                    description: """
                           561040 660 1K Etch Primer 0.4 л (аэрозоль)
                        
                           Быстросохнущий однокомпонентный травящий грунт, не содержащий хроматы, предназначен для нанесения на металл, алюминий и оцинкованную сталь.
                            Wanda 660 1K Etch Primer создает идеальные адгезионные свойства и великолепную антикоррозионную защиту.
                        """,
                    documentation: "https://disk.yandex.ru/i/KzoigX-Sc7LZ8Q"
                )
            ],
                // MARK: - Thinners
            [
                Product(name: "Разбавитель", brand: .sikkens, group: .thinner, price: "0 Р", description: "", documentation: "")
            ],
            [
                Product(name: "Отвердитель", brand: .sikkens, group: .hardener, price: "0 Р", description: "", documentation: "")
            ],
            [
                Product(name: "Шпатлевка", brand: .sikkens, group: .putty, price: "0 Р", description: "", documentation: "")
            ],
            [
                Product(name: "Добавка", brand: .sikkens, group: .additive, price: "0 Р", description: "", documentation: "")
            ],
            [
                Product(name: "Обезжириватель", brand: .sikkens, group: .degreaser, price: "0 Р", description: "", documentation: "")
            ],
            [
                Product(name: "Оборудование", brand: .sikkens, group: .equipment, price: "0 Р", description: "", documentation: "")
            ],
            [
                Product(name: "Сolorvation", brand: .sikkens, group: .colorvation, price: "0 Р", description: "", documentation: "")
            ],
        ]
    }
    
}

enum Brand: String {
    case sikkens = "Sikkens"
    case lesonal = "Lesonal"
    case wanda = "Wanda"
}

enum Group: String {
    case varnish = "Лаки"
    case primer = "Грунты"
    case thinner = "Разбавители"
    case hardener = "Отвердители"
    case putty = "Шпатлевки"
    case additive = "Добавки"
    case degreaser = "Обезжириватели"
    case equipment = "Оборудование"
    case colorvation = "Сolorvation"
    
    static func getAllGroups() -> [String] {
        [
            varnish.rawValue,
            primer.rawValue,
            thinner.rawValue,
            hardener.rawValue,
            putty.rawValue,
            additive.rawValue,
            degreaser.rawValue,
            equipment.rawValue,
            colorvation.rawValue
        ]
    }
}
