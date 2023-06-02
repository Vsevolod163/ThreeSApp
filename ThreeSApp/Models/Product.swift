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
                Product(
                    name: "Plus Reducer Medium 1 л",
                    brand: .sikkens,
                    group: .thinner,
                    price: "1753 Р",
                    description: """
                            376915 Plus Reducer Medium 1 л
                            
                            Разбавители серии Plus Reducers могут добавляться во многие материалы Sikkens – базовые покрытия, эмали, лаки, адгезионные грунты, грунты-наполнители и изоляторы.
                            Для регулирования межслойной выдержки, в зависимости от температуры, выпускаются быстрый (Fast), средний (Medium), медленный (Slow) и очень медленный (Extra slow) разбавители.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Plus Reducer Medium 5 л",
                    brand: .sikkens,
                    group: .thinner,
                    price: "8063 Р",
                    description: """
                            377032 Plus Reducer Medium 5 л
                        
                            Разбавители серии Plus Reducers могут добавляться во многие материалы Sikkens – базовые покрытия, эмали, лаки, адгезионные грунты, грунты-наполнители и изоляторы.
                            Для регулирования межслойной выдержки, в зависимости от температуры, выпускаются быстрый (Fast), средний (Medium), медленный (Slow) и очень медленный (Extra slow) разбавители.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Plus Reducer Slow 1 л",
                    brand: .sikkens,
                    group: .thinner,
                    price: "1786 Р",
                    description: """
                            376914 Plus Reducer Slow 1 л
                            
                            Разбавители серии Plus Reducers могут добавляться во многие материалы Sikkens – базовые покрытия, эмали, лаки, адгезионные грунты, грунты-наполнители и изоляторы.
                            Для регулирования межслойной выдержки, в зависимости от температуры, выпускаются быстрый (Fast), средний (Medium), медленный (Slow) и очень медленный (Extra slow) разбавители.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Plus Reducer Slow 5 л",
                    brand: .sikkens,
                    group: .thinner,
                    price: "8213 Р",
                    description: """
                            376889 Plus Reducer Slow 5 л
                            
                            Разбавители серии Plus Reducers могут добавляться во многие материалы Sikkens – базовые покрытия, эмали, лаки, адгезионные грунты, грунты-наполнители и изоляторы.
                            Для регулирования межслойной выдержки, в зависимости от температуры, выпускаются быстрый (Fast), средний (Medium), медленный (Slow) и очень медленный (Extra slow) разбавители.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Plus Reducer Extra Slow 1 л",
                    brand: .sikkens,
                    group: .thinner,
                    price: "1974 Р",
                    description: """
                            376913 Plus Reducer Extra Slow 1 л
                        
                            Разбавители серии Plus Reducers могут добавляться во многие материалы Sikkens – базовые покрытия, эмали, лаки, адгезионные грунты, грунты-наполнители и изоляторы.
                            Для регулирования межслойной выдержки, в зависимости от температуры, выпускаются быстрый (Fast), средний (Medium), медленный (Slow) и очень медленный (Extra slow) разбавители.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "SRA Agent 1 л",
                    brand: .sikkens,
                    group: .thinner,
                    price: "1625 Р",
                    description: """
                            376097 Для переходов SRA Agent 1 л
                        
                            Разбавитель для переходов SRA Agent.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Multi Thinner Standard 5 л",
                    brand: .lesonal,
                    group: .thinner,
                    price: "6902 Р",
                    description: """
                            376901 Multi Thinner Standard 5 л
                        
                            Универсальный разбавитель для использования при температуре до 25 °C.
                            Используется с: 1K Etch Primer · 1K Primer Filler · 2K MS Clear Fast · 2K Epoxy Primer · 2K Filler 540 (шлифование) · 2K High Build Filler · 2K Graphite Filler · 2K Universal Plastic Primer · Basecoat SB · 2K HS Extra Clear · 2K MS Matting Clear.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Fade Out Agent 1 л",
                    brand: .lesonal,
                    group: .thinner,
                    price: "1702 Р",
                    description: """
                            376923 Fade Out Agent 1 л
                        
                            Средство для растворения краев избыточного распыления при исчезновении и смешивании для всех прозрачных покрытий и верхнего покрытия HS 420.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "110 Thinner Standard 1 л",
                    brand: .wanda,
                    group: .thinner,
                    price: "1569 Р",
                    description: """
                            561161 110 Thinner Standard 1 л
                        
                            Универсальный разбавитель для регулировки вязкости грунтоввыравнивателей,лаков и эмалей. Подходит для проведения любого вида ремонта в разных погодных условиях.
                            Используется со следующими продуктами: лак 810 Clear AS, лак 820 Clear AS Express, лак. 850 Clear Easy, лак 830 Clear Matt , лак 860 Clear AS HS, базовое покрытие Wandabase MAX, покрывная эмаль 2K Topcoat 2K Max, грунт 600 Filler 4:1, грунт 630 2K Epoxy Primer, грунт 640 Filler Multi , грунт 650 Filler HB 5:1, грунт 670 Filler 4:1.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "110 Thinner Standard 5 л",
                    brand: .wanda,
                    group: .thinner,
                    price: "6474 Р",
                    description: """
                            561162 110 Thinner Standard 5 л
                        
                            Универсальный разбавитель для регулировки вязкости грунтоввыравнивателей,лаков и эмалей. Подходит для проведения любого вида ремонта в разных погодных условиях.
                            Используется со следующими продуктами: лак 810 Clear AS, лак 820 Clear AS Express, лак. 850 Clear Easy, лак 830 Clear Matt , лак 860 Clear AS HS, базовое покрытие Wandabase MAX, покрывная эмаль 2K Topcoat 2K Max, грунт 600 Filler 4:1, грунт 630 2K Epoxy Primer, грунт 640 Filler Multi , грунт 650 Filler HB 5:1, грунт 670 Filler 4:1.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "150 Thinner Fade Out 1 л",
                    brand: .wanda,
                    group: .thinner,
                    price: "1723 Р",
                    description: """
                            563898 150 Thinner Fade Out 1 л
                        
                            Растворитель для переходов 150 Thinner Fade Out разработан для растворения тонкой границы слоя лака на месте перехода. Идеальное решение для локального ремонта.
                            Метод нанесения и технические детали описаны ниже. Этот растворитель можно использовать со всеми лаками и акриловой эмалью Wanda.
                        """,
                    documentation: "https://disk.yandex.ru/i/wAxOAEYe2MAdwA"
                ),
                Product(
                    name: "170 Thinner Fade Out RTS 0.4 л",
                    brand: .wanda,
                    group: .thinner,
                    price: "727 Р",
                    description: """
                            561154 170 Thinner Fade Out RTS 0.4 л (аэрозоль)
                        
                            Растворитель для переходов 170 Thinner Fade Out в аэрозольной упаковке, разработан для растворения тонкой границы слоя лака на месте перехода.
                            Идеальное решение для локального ремонта. Метод нанесения и технические детали описаны ниже. Этот растворитель можно использовать со всеми лаками Wanda.
                        """,
                    documentation: "https://disk.yandex.ru/i/Hf1aoxkKBxzkXg"
                ),
                Product(
                    name: "180 Accelerator 1 л",
                    brand: .wanda,
                    group: .thinner,
                    price: "1397 Р",
                    description: """
                            561173 180 Accelerator 1 л
                        
                            Wanda 180 Accelerator разработан для улучшения сквозного отверждения и снижения времени сушки лаков Wanda, идеален для локального ремонта и окраски полной панели.
                        """,
                    documentation: "https://disk.yandex.ru/i/BygvMmL-AVv6pA"
                )
            ],
            
            // MARK: - Hardeners
            [
                Product(
                    name: "Hardener P25 1 л",
                    brand: .sikkens,
                    group: .hardener,
                    price: "3440 Р",
                    description: """
                        376881 Hardener P25 1 л.
                        Отвердители серии "P" являются многофункциональными отвердителями, которые могут использоваться в различных грунтах-наполнителях, покрывных эмалях и лаках системы Sikkens. Для регулирования скорости сушки используются быстрый (Р25) и медленный (Р35) отвердители.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Hardener P25 5 л",
                    brand: .sikkens,
                    group: .hardener,
                    price: "16426 Р",
                    description: """
                        376879 Hardener P25 5 л.
                        Отвердители серии "P" являются многофункциональными отвердителями, которые могут использоваться в различных грунтах-наполнителях, покрывных эмалях и лаках системы Sikkens. Для регулирования скорости сушки используются быстрый (Р25) и медленный (Р35) отвердители.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Hardener P35 1 л",
                    brand: .sikkens,
                    group: .hardener,
                    price: "3446 Р",
                    description: """
                        376883 Hardener P35 1 л.
                        Отвердители серии "P" являются многофункциональными отвердителями, которые могут использоваться в различных грунтах-наполнителях, покрывных эмалях и лаках системы Sikkens. Для регулирования скорости сушки используются быстрый (Р25) и медленный (Р35) отвердители.

                        """,
                    documentation: ""
                ),
                Product(
                    name: "Autoclear Basiq HS Hardener Slow 1 л",
                    brand: .sikkens,
                    group: .hardener,
                    price: "3159 Р",
                    description: """
                        541979 Autoclear Basiq HS Hardener Slow 1 л.
                        Отвердитель для лака Autoclear Basiq HS Hardener.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Universal Hardener Standard 1 л",
                    brand: .lesonal,
                    group: .hardener,
                    price: "2788 Р",
                    description: """
                        376926 Universal Hardener Standard 1 л.
                        Универсальный отвердитель для условий применения до 25°C.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Hardener Epoxy Primer 0.5 л",
                    brand: .lesonal,
                    group: .hardener,
                    price: "1984 Р",
                    description: """
                        376946 Hardener Epoxy Primer 0.5 л.
                        Специальный отвердитель для 2К эпоксидного грунта.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "310 Hardener Standard 0.2 л",
                    brand: .wanda,
                    group: .hardener,
                    price: "529 Р",
                    description: """
                        593946 310 Hardener Standard 0.2 л.
                        Универсальный стандартный отвердитель, подходящий для любого вида ремонта в разных погодных условиях. Используется со следующими продуктами: лак 810 Clear AS, лак 820 Clear AS Express, лак 830 Clear Matt, лак 860 Clear AS HS, грунт 600 Filler 4:1, грунт 640 Filler Multi, покрывная эмаль 2K Topcoat MAX.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "310 Hardener Standard 0.5 л",
                    brand: .wanda,
                    group: .hardener,
                    price: "1057 Р",
                    description: """
                        561107 310 Hardener Standard 0.5 л.
                        Универсальный стандартный отвердитель, подходящий для любого вида ремонта в разных погодных условиях. Используется со следующими продуктами: лак 810 Clear AS, лак 820 Clear AS Express, лак 830 Clear Matt, лак 860 Clear AS HS, грунт 600 Filler 4:1, грунт 640 Filler Multi, покрывная эмаль 2K Topcoat MAX.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "310 Hardener Standard 1 л",
                    brand: .wanda,
                    group: .hardener,
                    price: "1931Р",
                    description: """
                        561121 310 Hardener Standard 1 л.
                        Универсальный стандартный отвердитель, подходящий для любого вида ремонта в разных погодных условиях. Используется со следующими продуктами: лак 810 Clear AS, лак 820 Clear AS Express, лак 830 Clear Matt, лак 860 Clear AS HS, грунт 600 Filler 4:1, грунт 640 Filler Multi, покрывная эмаль 2K Topcoat MAX.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "310 Hardener Standard 2.5 л",
                    brand: .wanda,
                    group: .hardener,
                    price: "4277 Р",
                    description: """
                        561122 310 Hardener Standard 2.5 л.
                        Универсальный стандартный отвердитель, подходящий для любого вида ремонта в разных погодных условиях. Используется со следующими продуктами: лак 810 Clear AS, лак 820 Clear AS Express, лак 830 Clear Matt, лак 860 Clear AS HS, грунт 600 Filler 4:1, грунт 640 Filler Multi, покрывная эмаль 2K Topcoat MAX.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "360 Hardener 2K Epoxy Primer 0.5 л",
                    brand: .wanda,
                    group: .hardener,
                    price: "934 Р",
                    description: """
                        561138 360 Hardener 2K Epoxy Primer 0.5 л.
                        Специальный отвердитель для: эпоксидного грунта 630 2К.
                        """,
                    documentation: ""
                )
            ],
            
            // MARK: - Putty
            [
                Product(
                    name: "500 Putty Multiuse (комплект) 1.8 кг",
                    brand: .wanda,
                    group: .putty,
                    price: "1426 Р",
                    description: """
                        561183 510 Putty Glass Fiber (комплект) 1.6 кг.
                        Двухкомпонентная шпатлевка, армированная стекловолокном, предназначена для устранения глубоких и больших повреждений, может быть нанесена на любую поверхность.
                        """,
                    documentation: "https://disk.yandex.ru/i/-XZ7WkJdfga3Eg"
                ),
                Product(
                    name: "510 Putty Glass Fiber (комплект) 1.6 кг",
                    brand: .wanda,
                    group: .putty,
                    price: "1589 Р",
                    description: """
                        561185 500 Putty Multiuse (комплект) 1.8 кг.
                        Двухкомпонентная полиэфирная шпатлевка предназначена для устранения небольших повреждений и неровностей. Этот продукт имеет уникальные адгезионные свойства к различным материалам поверхности: сталь, оцинкованная сталь и алюминий.
                        """,
                    documentation: "https://disk.yandex.ru/i/sC0HwzAE1hN15g"
                ),
                Product(
                    name: "520 Putty Plastic (комплект) 0.4 кг",
                    brand: .wanda,
                    group: .putty,
                    price: "841 Р",
                    description: """
                        561187 520 Putty Plastic (комплект) 0.4 кг.
                        Двухкомпонентная полиэфирная шпатлевка для устранения незначительных повреждений и неровностей на пластиковых деталях. Эта шпатлевка имеет идеальные адгезионные свойства ко всем типам пластика.
                        """,
                    documentation: "https://disk.yandex.ru/i/lMTXDExcK4UHTw"
                ),
            ],
            
            // MARK: - Additive
            [
                Product(
                    name: "Autobase Plus Blending Agent 1 л",
                    brand: .sikkens,
                    group: .additive,
                    price: "2280 Р",
                    description: """
                        376036 Autobase Plus Blending Agent 1 л.
                        Добавка для перехода Autobase Plus Blending Agent 1 л.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Elast-O-Actif 1 л",
                    brand: .sikkens,
                    group: .additive,
                    price: "2726 Р",
                    description: """
                        376934 Elast-O-Actif 1 л.
                        Пластифицирующая добавка, созданная для окраски автомобильных деталей из мягких видов пластика. Добавление ее в систему окраски обеспечивает пластичность покрытия, что позволяет ему выдержать деформацию детали без повреждений.
                        """,
                    documentation: "https://disk.yandex.ru/i/MH11em-PBCojeQ"
                ),
                Product(
                    name: "Blend-Prep 0.326 л",
                    brand: .sikkens,
                    group: .additive,
                    price: "1786 Р",
                    description: """
                        517618 Blend-Prep 0.326 л.
                        Blend Prep является абразивной пастой специально разработанной для подготовки зоны перехода. Используйте пасту Blend Prep вместе с абразивным матирующим материалом для создания оптимальной адгезии в местах перехода базового покрытия, в местах выхода акриловой эмали и лакового слоя.
                        """,
                    documentation: "https://disk.yandex.ru/i/RYmOIzLMNVxi-A"
                ),
                Product(
                    name: "Flexible Additive 1 л",
                    brand: .lesonal,
                    group: .additive,
                    price: "2827 Р",
                    description: """
                        376902 Flexible Additive 1 л.
                        Пластификатор Flexible Additive создан для использования с Lesonal 2K Topcoat, 2K MS Clear Fast, 2K HS Extra Clear, 2K High Build Filler and 2K Filler 540 Добавление этого продукта необходимо при ремонтной окраске деталей сделанных из мягкого или сверх мягкого типа пластика.
                        """,
                    documentation: "https://disk.yandex.ru/i/3oPYpuXo-he5UQ"
                )
            ],
            
            // MARK: - Degreaser
            [
                Product(
                    name: "M200 5 л",
                    brand: .sikkens,
                    group: .degreaser,
                    price: "4697 Р",
                    description: """
                        376050 M200 5 л.
                        Обезжириватель М200 на водной основе предназначен для удаления водорастворимых загрязнений. М200 используется только после очистки поверхности любым органическим обезжиривателем из ассортимента Sikkens.
                        """,
                    documentation: "https://disk.yandex.ru/i/5zSuNMZy2v0FIA"
                ),
                Product(
                    name: "M600 5 л",
                    brand: .sikkens,
                    group: .degreaser,
                    price: "5295 Р",
                    description: """
                        376943 M600 5 л.
                        M600 – очиститель/обезжириватель общего назначения. Он подходит для очистки и обезжиривания голого металла, старых лакокрасочных покрытий, загрунтованных поверхностей и др. Этот обезжириватель наименее агрессивный среди обезжиривателей Sikkens на солвентной основе. M600 не рекомендуется использовать для обезжиривания автомобильных деталей сделанных из пластмассы и стекловолокна. Для этих целей следует использовать обежириватель M700 Anti Static Silicon Remover.
                        """,
                    documentation: "https://disk.yandex.ru/i/l-jol1XsSVagsg"
                ),
                Product(
                    name: "M700 5 л",
                    brand: .sikkens,
                    group: .degreaser,
                    price: "5669 Р",
                    description: """
                        376945 M700 5 л.
                        М700 обладает свойствами обезжиривателя и антистатика, объединенными в одном продукте, может применяться при выполнении любых видов ремонтов в автосервисе, включая обработку деталей из пластика и слоистых ламинатов, так же применяется для очистки и обезжиривания старых покрытий, включая термопластичные акриловые. Подходит для обезжиривания при проведении всех подготовительных и окрасочных работ материалами Sikkens. М700 обладает агрессивными очищающими свойствами и может оказать воздействие на определенные грунты и лаки, свежие финишные покрытия. Проверяйте обрабатываемые поверхности на обратимость. М700 в сравнении с М600 имеет более медленную скорость испарения.
                        """,
                    documentation: "https://disk.yandex.ru/i/Be-YTgbzJZ4sFA"
                ),
                Product(
                    name: "Antistatic Degreaser SB 5 л",
                    brand: .lesonal,
                    group: .degreaser,
                    price: "4652 Р",
                    description: """
                        376925 Antistatic Degreaser SB 5 л.
                        Обезжириватель Antistatic Degreaser SB создан для очистки и обезжиривания поверхности детали. Этот продукт удаляет с поверхности загрязнения от жира, полировальных паст, масла и других загрязнений, содержащих силикон. Так же Antistatic Degreaser SB нейтрализует статическое напряжение на пластиковых деталях.
                        """,
                    documentation: "https://disk.yandex.ru/i/ZXU7rlULmH2P8g"
                ),
                Product(
                    name: "Wandabase SB Degreaser 5 л",
                    brand: .wanda,
                    group: .degreaser,
                    price: "3278 Р",
                    description: """
                        561180 Wandabase SB Degreaser 5 л.
                        Обезжириватель на основе растворителей созданный для очистки и обезжиривания существующих покрытий, грунтов, грунтов-выравнивателей перед началом нанесения материалов. Этот обезжириватель удаляет загрязнения, полученные от масла, выхлопных газов, полировальных паст, силикона и т.д.
                        """,
                    documentation: "https://disk.yandex.ru/i/a7rAd4tpGOhfYQ"
                ),
                Product(
                    name: "Wandabase WB Degreaser 5 л",
                    brand: .wanda,
                    group: .degreaser,
                    price: "3278 Р",
                    description: """
                        561179 Wandabase WB Degreaser 5 л.
                        Обезжириватель на водной основе, предназначен для очистки и обезжиривания поверхности. Может быть применен для удаления загрязнений, растворимых водой, с поверхностей существующего покрытия, заводского ОЕМ грунта, грунтов-выравнивателей перед началом окраски.
                        """,
                    documentation: "https://disk.yandex.ru/i/fHE31gH07EDsfw"
                )
            ],
            
            // MARK: - Equipment
            [
                Product(
                    name: "PA10-7",
                    brand: .santint,
                    group: .equipment,
                    price: "Цена по запросу 📲",
                    description: """
                        2005351 Santint PA10-7
                        Смесительная установка с автоматическим таймером. Дозаторные крышки-мешалки 1 л. и 3.75 л. поставляются отдельно. Время смешивания: 0-15 минут. Скорость: 72 об/мин.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Automatchic Vision",
                    brand: .akzoNobel,
                    group: .equipment,
                    price: "Цена по запросу 📲",
                    description: """
                        2002956 Automatchic vision
                        Automatchic Vision – это уникальный, компактный и простой в использовании спектрофотометр, оснащенный Wi-Fi. С его помощью вы быстро и точно производите измерение цвета прямо на детали автомобиля. Полученные данные автоматически выгружаются на ваш компьютер для анализа и поиска идеальной формулы. Весь процесс занимает втрое меньше времени по сравнению с традиционной системой.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Evolution Scale",
                    brand: .sartorius,
                    group: .equipment,
                    price: "Цена по запросу 📲",
                    description: """
                        2006864 Sartorius Evolution Scale
                        Весы для смешивания красок Sartorius PMA.Evolution с грузоподъемностью 7500 г и разрешением 0,1 г для использования в невзрывоопасных (безопасных) зонах.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Color Universe",
                    brand: .akzoNobel,
                    group: .equipment,
                    price: "Цена по запросу 📲",
                    description: """
                        2001459 Color Universe
                        Цветовая документация Color Universe организована в хроматическом порядке, веера сформированы по цветовым группам, чипы в цветовом веере располагаются интуитивно понятным способом – плавным переходом от темного к светлому, учитывая насыщенность цвета. При этом на один веер могут ссылаться цвета разных автопроизводителей (перекрестные ссылки). Color Universe является универсальной цветовой документацией и может применяться для идентификации любого цвета, представленного в линейках брендов Sikkens, Lesonal, Wanda. Для упрощения поиска необходимого цвета на обратной стороне чипа расположен QR код, сканирование которого в iMatchColor выдает формулу цвета, визуализированного на чипе. В данной цветовой документации представлены металликовые/перламутровые цвета (6 814 чипов) и солидные цвета (914 чипов). Для размещения документации  предназначены 2 шкафа (правый и левый).
                        """,
                    documentation: ""
                )
            ],
            
            // MARK: - Colorvation
            [
                Product(
                    name: "Mixit",
                    brand: .akzoNobel,
                    group: .colorvation,
                    price: "",
                    description: """
                        MIXIT - это ультрабыстрая, удобная для пользователя онлайн программа, совместимая с различными устройствами (ПК, планшет, мобильный телефон), благодаря использованию революционной облачной технологии. В ней содержатся сведения о более чем двух миллионах цветов и вариантов. Информация обновляется в реальном времени по мере появления новых цветов автомобилей. В MIXIT также ведется учет всех выполненных вами заданий. Доступ к данным обеспечивается мгновенно с вашего ПК, планшета или мобильного телефона. Если вы корректируете формулу, то ваше изменение автоматически сохраняется в учетных данных.
                        """,
                    documentation: ""
                ),
                Product(
                    name: "Mixit Pro",
                    brand: .akzoNobel,
                    group: .colorvation,
                    price: "",
                    description: """
                        MIXIT PRO – это программное обеспечение для поиска формул и точного подбора цвета автомобиля. Устанавливается жесткий диск вашего ПК. Имеет локальную и серверную версии. Благодаря функции пошаговой помощи поиск и нахождение точной формулы становится простым и надежным. Кроме того, Mixit Pro имеет ряд дополнительных функций для организации эффективного процесса в кузовном цехе: назначение смесей в заказ-наряды, расчет необходимого объема материала (краска, лак, грунт) в заказ-наряде, управление запасами, формирование отчетов о материальных затратах и т.д.
                        """,
                    documentation: ""
                )
            ]
        ]
    }
    
}

enum Brand: String {
    case sikkens = "Sikkens"
    case lesonal = "Lesonal"
    case wanda = "Wanda"
    case akzoNobel = "AkzoNobel"
    case sartorius = "Sartorius"
    case santint = "Santint"
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
