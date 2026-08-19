# 206 BURGER — CLIENT ↔ REFERENCE MAPPING
## Documento 04 — KDL V2 Phase 02: Mapeamento Sistemático de Conteúdo e Assets

---

# 1. MATRIZ DE MAPEAMENTO CENA A CENA

Esta matriz conecta cada elemento estrutural da referência aprovada com o conteúdo real e os assets auditados do **206 Burger**.

| ELEMENTO DA REFERÊNCIA | FUNÇÃO ARQUITETURAL | CONTEÚDO REAL DO CLIENTE | ASSET DO CLIENTE (IMAGENS) | ESTRATÉGIA DE ADAPTAÇÃO |
| :--- | :--- | :--- | :--- | :--- |
| **Navbar: Logo "CRAV"** | Identificador de marca no topo fixo | Logotipo 206 Burger em grafite autêntico com gotas de spray | `imgi_2_...jpg` (matriz vetorizada em SVG) | Renderizar vetor SVG do logo 206 em ciano com efeito hover de escala e brilho. |
| **Navbar: CTA Pill "Burgers" + Menu Button** | Ponto de conversão rápido e acesso à navegação | Botão "Pedir Agora" / "WhatsApp & Delivery" + Menu Drawer | — | Manter o botão cápsula com efeito de texto duplo deslizante (*double text slide*) em ciano e preto. |
| **Hero: Título Monumental "THE BURGER"** | Âncora tipográfica de fundo em escala 30vw | "O SMASH BURGER" ou "O VERDADEIRO SMASH" | — | Tipografia condensada monumental com contorno/stroke sutil, servindo de backdrop para o produto. |
| **Hero: Badges Rotacionados** | Selos de impacto imediato nos cantos | "FEITO EM DIADEMA" & "CROSTA PERFEITA" | Grafismo derivado do mural `imgi_17` | Selos inclinados em ±15° com cores contrastantes (ciano e vermelho) destacando a autenticidade local. |
| **Hero: Cutout Central de Hambúrguer (40vw)** | Ponto focal máximo, sobrepondo o texto de fundo | Smash duplo com queijo empanado derretendo e crosta tostada | `imgi_12_...jpg` ou `imgi_14_...jpg` | Recorte minucioso em PNG com transparência e sombra projetada realista sobreposta ao texto. |
| **Hero: Palavra-Marca Inferior "CRAV"** | Base tipográfica que fecha o sanduíche visual | "2 0 6" em tipografia volumosa e robusta | `imgi_2_...jpg` / `imgi_6_...jpg` | Letras volumosas em amarelo cheddar / ciano posicionadas logo abaixo do hambúrguer. |
| **Hero: Textos de Rodapé Esquerdo e Direito** | Contextualização de preparo e sabor artesanal | "Chapa quente, prensagem precisa e crosta caramelizada..." / "Cheddar cremoso, bacon crocante e maionese da casa..." | Textos derivados da verdade operacional do 206 Burger | Blocos de texto de 2 colunas nas extremidades inferiores da viewport. |
| **About: Eyebrow + Título "JUICY CHEESY FULLY LOADED"** | Declaração de identidade e sabor | "SUPER RESTAURANTE" / "SUCULÊNCIA, CROSTA & MUITO QUEIJO" | Placa oficial `imgi_9_...jpg` como referência | Manter a escala monumental com destaque para os 12 meses consecutivos de Super Restaurante iFood. |
| **About: Botão Blob Orgânico "Order Now"** | Conversão secundária lúdica | "Fazer Pedido no WhatsApp / Delivery" | — | Botão SVG com forma de blob orgânico em vermelho/ciano com texto em caixa alta. |
| **About: Sticker 3D Peelable** | Interatividade e ludicidade tátil | Sticker da batata com cara de grafite ou selo "Feito em Diadema" | `imgi_6_...jpg` / `imgi_17_...jpg` | Adesivo com filtro SVG de iluminação pontual e curvatura de descolamento no hover. |
| **About: 3 Cards Fotográficos Inclinados** | Prova visual de bastidores, suculência e ambiente | 1. Porção de batatas com bacon (`imgi_11`)<br>2. Montagem do smash na chapa (`imgi_10`)<br>3. Interior do salão com luz quente (`imgi_25`) | `imgi_11`, `imgi_10`, `imgi_25` | Três cards com bordas arredondadas (4%), rotações de +5°, -5° e +8°, com efeito hover interativo. |
| **Transição 1: Onda Orgânica Vermelha** | Ruptura de ritmo e transição para o bloco escuro/vermelho | Transição suave da cor neutra para o Vermelho Brasa ou Preto Urbano do 206 | SVG Jelly Curve | Divisor curvo contínuo preservando a geometria sinuosa exata da referência. |
| **Experience: Mascote / Personagem Central** | Elemento de personalidade e identidade visual forte | Personagem autoral do 206 (caixa de batatas frita com cara de grafite e olhos expressivos) | `imgi_17_...jpg` / `imgi_6_...jpg` | Personagem ilustrado do mural recortado e vetorizado, integrando o DNA real de arte urbana da loja física. |
| **Experience: Badges Flanqueadores** | Credenciais de qualidade e sabor | "12 Meses Consecutivos Super Restaurante iFood" & "Smash 100% Bovino com Queijo Artesanal" | Placa `imgi_9_...jpg` | Selos com métricas reais do 206 Burger. |
| **Scene 04: Banner Full-bleed Imersivo** | Choque visual de apetite appeal em tela cheia | Foto em primeiro plano de mãos segurando smash burger farto com queijo e bacon | `imgi_12_...jpg` ou `imgi_20_...jpg` | Banner fotográfico de largura total com sobreposição e transição curva orgânica. |
| **Ingredients: Seção de Ingredientes em Parallax** | Desconstrução de qualidade camada por camada | Pão brioche tostado, smash 100% bovino prensado, fatia de cheddar derretido, cebola caramelizada, bacon crocante e maionese verde | Recortes de `imgi_10`, `imgi_12`, `imgi_16` | Ingredientes flutuando em posições alternadas com movimento de parallax em eixos opostos durante o scroll. |
| **Take Away: Mapa e Trilha de Entrega** | Conexão geográfica de delivery e retirada | "DO CENTRO DE DIADEMA ATÉ A SUA MESA" — Bairros atendidos e pontos de encontro | `imgi_24_...jpg` (sacos kraft na calçada) & `imgi_18_...jpg` (combo delivery) | Linha pontilhada conectando polaroids com cenas de delivery e retirada no balcão de Diadema. |
| **CTA Final: Lifestyle + Chamada de Conversão** | Fechamento caloroso convidando a experimentar | "SINTA A DIFERENÇA DO VERDADEIRO SMASH" com botão "PEDIR NO WHATSAPP / IFOOD" | `imgi_19_...jpg` (banquete compartilhado) ou `imgi_5_...jpg` (milk-shake) | Layout em 2 colunas com texto e botão de ação à esquerda e foto farta à direita. |
| **Footer: Wordmark Monumental de Rodapé** | Fechamento imponente de identidade visual | "2 0 6   B U R G E R" ocupando ~95vw de largura | Tipografia display com traços urbanos | Letras monumentais na base do rodapé antes dos créditos e horário de funcionamento. |
