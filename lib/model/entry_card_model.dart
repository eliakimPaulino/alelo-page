class EntryCardModel {
  final String cardTitle;
  final String cardVitrineImage;
  final String cardImage;
  final String cardSubtitle;
  final String cardDescription;
  EntryCardModel({
    required this.cardTitle,
    required this.cardVitrineImage,
    required this.cardImage,
    required this.cardSubtitle,
    required this.cardDescription,
  });
}

List<EntryCardModel> entryCardData = [
  EntryCardModel(
    cardTitle: 'NATAL',
    cardVitrineImage: 'assets/alelo_vitrine_entry_card/alelo_natal.jpg',
    cardImage: 'assets/images/alelo_natal.png',
    cardSubtitle:
        'Substitua a Cesta de Natal pelo presente preferido da sua equipe!',
    cardDescription:
        '72% dos trabalhadores brasileiros preferem receber o cartão em vez da cesta física, segundo Pesquisa do Instituto Expertise(2015).',
  ),
  EntryCardModel(
    cardTitle: 'REFEIÇÃO',
    cardVitrineImage:
        'assets/alelo_vitrine_entry_card/alelo_refeicao.jpg',
    cardImage: 'assets/images/alelo_refeicao.png',
    cardSubtitle: 'É benefício pra todo mundo!',
    cardDescription:
        'Seu funcionário conta com promoções em restaurantes e lanchonetes de todo o Brasil. Sua empresa tem condições especiais, isenção de encargos e incentivo fiscal.*\n*De acordo com tributação.',
  ),
  EntryCardModel(
    cardTitle: 'ALIMENTAÇÃO',
    cardVitrineImage:
        'assets/alelo_vitrine_entry_card/alelo_alimentacao.jpg',
    cardImage: 'assets/images/alelo_alimentacao.png',
    cardSubtitle: 'Elimine a cesta básica e surpreenda seus colaboradores!',
    cardDescription:
        'Com o vale alimentação da ALELO, você acaba com os transtornos para armazenar, distribuir e transportar as cestas físicas. Muito mais liberdade para escolher alimentos frescos como carnes, legumes, verduras e frutas.',
  ),
  EntryCardModel(
    cardTitle: 'TUDO',
    cardVitrineImage: 'assets/alelo_vitrine_entry_card/alelo_tudo.jpg',
    cardImage: 'assets/images/alelo_tudo.png',
    cardSubtitle: 'Único & Prático',
    cardDescription:
        'O ALELO TUDO é a solução completa, modular e adaptável para todas as modalidades. Com ele é possível compor o portfólio de benefícios da sua empresa como precisar. Conheça TUDO que podemos fazer para apoiar o dia a dia da sua equipe!',
  ),
  EntryCardModel(
    cardTitle: 'MULTIBENEFÍCIOS',
    cardVitrineImage:
        'assets/alelo_vitrine_entry_card/alelo_multibeneficios.jpg',
    cardImage: 'assets/images/alelo_multibeneficio.png',
    cardSubtitle:
        'Cartão com limites de compra na rede Alelo e gestão de subsídios',
    cardDescription:
        'Sua equipe conta com um cartão que oferece limite adicional* para usar na Multirede Alelo. Aceito em supermercados, restaurantes, açougues, farmácias, entre outros. O desconto do valor ultilizado é feito diretamente na folha de pagamento em até 40 dias!',
  ),
  EntryCardModel(
    cardTitle: 'MOBILIDADE',
    cardVitrineImage:
        'assets/alelo_vitrine_entry_card/alelo_mobilidade.jpg',
    cardImage: 'assets/images/alelo_mobilidade.png',
    cardSubtitle:
        'Múltiplas opções de transporte para seu colaborador ir  e vir',
    cardDescription:
        'Você centraliza o pagamento de reembolso em um único processo e seus colaboradores escolhem a melhor opção para se deslocarem pela cidade!',
  ),
  EntryCardModel(
    cardTitle: 'Gestão de Vale Transporte',
    cardVitrineImage:
        'assets/alelo_vitrine_entry_card/alelo_gestao_de_vt.jpg',
    cardImage: 'assets/alelo_gestaoVt.png',
    cardSubtitle: 'Eficiência e economia para sua empresa',
    cardDescription:
        'Contrate a gestão completa do vale-transporte em um único canal, 100% online.',
  ),
  EntryCardModel(
    cardTitle: 'PREMIAÇÃO',
    cardVitrineImage:
        'assets/alelo_vitrine_entry_card/alelo_premiacao.jpg',
    cardImage: 'assets/images/alelo_premiacao.png',
    cardSubtitle:
        'Um jeito diferente de premiar e reconhecer seus colaboradores',
    cardDescription:
        'E você ainda escolhe o melhor formato entre as modalidades:\nrecarregável, carga única ou para uso restrito em locais de lazer e entretenimento.',
  ),
  EntryCardModel(
    cardTitle: 'FROTA',
    cardVitrineImage: 'assets/alelo_vitrine_entry_card/alelo_frota.jpg',
    cardImage: 'assets/images/alelo_frota.png',
    cardSubtitle: 'Nosso combustível é criar soluções para otimizar sua frota',
    cardDescription:
        'Plataforma da Veloe focada em gestão de frotas, que proporciona mais controle dos motoristas e veículos, centraliza pagamentos e garante eficiência no processo de Gestão. Veloe é uma marca ALELO.',
  ),
  EntryCardModel(
    cardTitle: 'DESPESAS',
    cardVitrineImage:
        'assets/alelo_vitrine_entry_card/alelo_despesas.jpg',
    cardImage: 'assets/images/alelo_despesas.png',
    cardSubtitle: 'O cartão para desburocratizar as despesas corporativas',
    cardDescription:
        'O cartões pré-pagos da Alelo são ideais para gerir as despesas administrativas da empresa, reduzir a burocracia e custos com reembolso.',
  ),
];
