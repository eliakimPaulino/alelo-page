import 'package:flutter/material.dart';

class CardPresentation {
  final String listTileTitle;
  final String listTileSubtitle;
  final Color listTileTitleColor;
  final String vitrineImage;
  final String cardImage;
  final String description;
  CardPresentation({
    required this.listTileTitle,
    required this.listTileSubtitle,
    required this.listTileTitleColor,
    required this.vitrineImage,
    required this.cardImage,
    required this.description,
  });
}

List<CardPresentation> cards = [
  CardPresentation(
    listTileTitle: 'ALELO NATAL',
    listTileSubtitle:
        'Para a sua equipe celebrar o fim do ano do jeito que quiser',
    listTileTitleColor: Colors.red,
    vitrineImage: 'assets/images/vitrine_desk_natal.png',
    cardImage: 'assets/images/alelo_natal.png',
    description:
        '''Transforme os sonhos do seu colaborador em realidade. Com o cartão Natal, aceito em toda a MultiRede Alelo, sua equipe celebra o fim do ano do jeito que quiser: em restaurantes, abastecendo o carro ou em supermercados.
          Pesquisamos* com nossos clientes e descobrimos que 72% dos colaboradores preferem o cartão à cesta de alimentos. Além de agradar a sua equipe, você elimina a cesta física e, consequentemente, elimina o problema logístico de se preocupar com espaço de armazenamento, validade dos alimentos e a entrega.
          O Alelo Natal é o único cartão-natal do mercado aceito em diversos tipos de estabelecimentos comerciais – e ainda oferece ofertas e descontos exclusivos em restaurantes, supermercados, cinemas, livrarias e outros.
          Taxa Zero: confira condição especial sem custo na emissão do cartão.
          *Pesquisa realizada pelo Instituto Expertise em agosto/2015.''',
  ),
  CardPresentation(
    listTileTitle: 'ALELO REFEIÇÃO',
    listTileSubtitle:
        'Maior aceitação em restaurantes lanchonetes lanchonetes. Sua empresa ainda conta com isenção de encargos sociais e incentivo fiscal*',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_ref.png',
    cardImage: 'assets/images/alelo_refeicao.png',
    description:
        'Ofereça para os seus colaboradores o Alelo Refeição, o vale-refeição aceito em milhares de estabelecimentos comerciais, entre restaurantes, lanchonetes, padarias, quiosques, fast foods e muito outros, espalhados por todas as cidades do Brasil. Ao eliminar o refeitório, você não precisa se preocupar com armazenagem e validade dos alimentos. Mais liberdade de escolha para seus funcionários, praticidade e economia para a sua empresa. Com o benefício vale-refeição Alelo, sua empresa fica regularizada junto ao PAT (Programa de Alimentação do Trabalhador), economiza com a isenção de encargos sociais, além de ter a possibilidade de dedução no IR (Imposto de Renda).Aproveite a oferta de TAXA ZERO na emissão de cartão e outros serviços. Veja o regulamento  e confira as condições comerciais na central de vendas Alelo. *De acordo com o regime de tributação.',
  ),
  CardPresentation(
    listTileTitle: 'ALELO ALIMENTAÇÃO',
    listTileSubtitle:
        'Troque a cesta básica pelo cartão vale-alimentação, aceito em supermercados, açougues e mercearias de todo o Brasil.Adquira já seu cartão vale-alimentação da Alelo!',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_ref.png',
    cardImage: 'assets/images/alelo_alimentacao.png',
    description:
        'Já pensou em economizar com as cestas básicas, e ainda não precisar se preocupar com o espaço para armazenamento, cuidados quanto à validade dos alimentos e logística para distribuição? Ofereça o Alelo vale-alimentação aos seus colaboradores. Aceito em milhares de estabelecimentos, entre supermercados, açougues, mercearias, padarias e similares de todo o Brasil, o cartão é uma ótima alternativa às cestas físicas. Ao contratar o benefício de alimentação, sua empresa pode se cadastrar no PAT (Programa de Alimentação do Trabalhador) e economizar com isenção de encargos sociais, podendo ainda ter dedução no Imposto de Renda. Para os colaboradores, o vale-alimentação Alelo oferece liberdade de escolha para comprar produtos frescos, como: carnes, legumes, frutas e verduras. Uma alimentação mais equilibrada para toda a família, mais qualidade de vida e bem-estar. Bom para o colaborador, bom para a empresa! Aproveite a oferta de TAXA  ZERO na emissão de cartão vale-alimentação e outros serviços. Veja o regulamento e confira as condições comerciais na central de vendas Alelo. *De acordo com o regime de tributação.',
  ),
  CardPresentation(
    listTileTitle: 'ALELO TUDO: CARTÃO COM BENEFÍCIOS FLEXÍVEIS',
    listTileSubtitle:
        'Todas as soluções que a sua empresa precisa em um único cartão, com a flexibilidade Alelo',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_ref.png',
    cardImage: 'assets/images/alelo_tudo.png',
    description:
        'O Alelo Tudo é a solução de benefícios flexíveis, completa, modular e adaptável para todas as necessidades e todos os tipos e tamanhos de empresas. Com ele, você tem a possibilidade de compor o portfólio de benefícios da sua empresa como precisar, seja para alimentação, refeição, auxílios home office, ajuda de custos de mobilidade, cultura, saúde, concessão de subsídio, antecipação salarial e muito mais.',
  ),
  CardPresentation(
    listTileTitle: 'ALELO MULTIBENEFÍCIOS',
    listTileSubtitle:
        'Bom para a empresa e sem taxas ou juros para o colaborador',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_multi.png',
    cardImage: 'assets/images/alelo_multibeneficio.png',
    description:
        'O Alelo Tudo é a solução de benefícios flexíveis, completa, modular e adaptável para todas as necessidades e todos os tipos e tamanhos de empresas. Com ele, você tem a possibilidade de compor o portfólio de benefícios da sua empresa como precisar, seja para alimentação, refeição, auxílios home office, ajuda de custos de mobilidade, cultura, saúde, concessão de subsídio, antecipação salarial e muito mais.',
  ),
  CardPresentation(
    listTileTitle: 'ALELO MOBILIDADE',
    listTileSubtitle:
        'Mais liberdade para o seu colaborador, mais praticidade para a sua empresa',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_mob.png',
    cardImage: 'assets/images/alelo_mobilidade.png',
    description:
        'Quer oferecer um cartão que possa ser usado em diversos meios de transporte? Com o cartão Alelo Mobilidade, o colaborador escolhe como quer se deslocar durante as atividades de trabalho. Ele pode usar aplicativos de táxis, bicicletas e abastecer o seu próprio veículo. Além do Alelo Mobilidade servir como vale combustível, também funciona como um cartão de pagamento de despesas automotivas como estacionamentos e manutenção leve. Tudo isso em um único cartão!',
  ),
  CardPresentation(
    listTileTitle: 'ALELO GESTÃO DE VALE TRANSPORTE',
    listTileSubtitle:
        'Fazer a gestão de vale-transporte de uma grande equipe não é tarefa fácil, afinal são diversas operadoras, muitas vezes, de municípios diferentes. E foi pensando em otimizar o seu tempo que criamos o Alelo Gestão de Vale-Transporte.',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_vt.png',
    cardImage: 'assets/images/alelo_gestaoVt.png',
    description:
        'Com ele, é possível administrar o vale-transporte dos seus colaboradores através de uma ferramenta única e super prática, que já soma mais de 900 operadoras parceiras espalhadas pelo Brasil. Além disso, com o Alelo Gestão de Vale-Transporte, você pode ter uma economia de até 50% dos custos. ',
  ),
  CardPresentation(
    listTileTitle: 'ALELO PREMIAÇÃO',
    listTileSubtitle: 'Ideal para o reconhecimento de talentos.',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_premiacao.png',
    cardImage: 'assets/images/alelo_premiacao.png',
    description:
        'O Alelo Premiação é um cartão pré-pago para reconhecer colaboradores ou prestadores de serviço de maneira ágil e sem burocracia. Pode ser utilizado em compras em milhões de estabelecimentos físicos e online da rede Elo, garantindo a liberdade de escolha do premiado.',
  ),
  CardPresentation(
    listTileTitle: 'ALELO FROTA',
    listTileSubtitle:
        'Nosso combustível é criar soluções para otimizar sua frota',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_frota.png',
    cardImage: 'assets/images/alelo_frota.png',
    description:
        'Plataforma da VELOE focada em gestão de frotas, que proporciona mais controle dos motoristas e veículos, centraliza pagamentos e garante eficiência no processo de gestão. Veloe é uma marca ALELO.',
  ),
  CardPresentation(
    listTileTitle: 'ALELO DESPESAS',
    listTileSubtitle:
        'Transparência e agilidade na gestão dos gastos da sua empresa',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_despesas.png',
    cardImage: 'assets/images/alelo_despesas.png',
    description:
        'O Alelo Despesas é um cartão corporativo pré-pago, recarregável, que pode ser usado para despesas administrativas, como compra de materiais de papelaria, pequenos reparos, cartório, chaveiro, fundo de caixa, entre outros. Com o cartão, você organiza de um jeito prático os gastos da empresa, reduz a burocracia e custos com reembolsos. Além disso, tem maior controle e transparência na prestação de contas.',
  ),
  CardPresentation(
    listTileTitle: 'ALELO PAGAMENTOS',
    listTileSubtitle: 'Seus desafios evoluem nossas soluções também',
    listTileTitleColor: const Color.fromRGBO(1, 88, 80, 1),
    vitrineImage: 'assets/images/vitrine_desk_pagamentos.png',
    cardImage: 'assets/images/alelo_pagamentos.png',
    description:
        'O Alelo Pagamentos é um cartão pré-pago que pode ser usado para remunerar colaboradores e terceiros. Com ele, a sua empresa resolve tudo de forma digital, gerenciando pagamentos para os cartões pré-pagos sem burocracia. E o melhor: você faz tudo em tempo real, de onde estiver, ganhando agilidade e autonomia. Já o usuário, além de receber o dinheiro creditado no cartão, pode pagar boletos, efetuar transferências e recarregar o celular pelo aplicativo Meu Alelo. O cartão-salário também está conectado à rede do Banco 24 Horas, para a realização de saques; e permite fazer compras em lojas físicas e online. A solução ideal para quem tem colaboradores em home office e precisa dar um auxílio nos custos com água, luz, telefone e internet.',
  ),
];
