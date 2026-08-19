# 206 BURGER — REFERENCE RESPONSIVE MAP
## Documento 06 — KDL V2 Phase 02: Adaptação Responsiva e Composição Mobile

---

# 1. PRINCÍPIO RESPONSIVO DA REFERÊNCIA

> [!IMPORTANT]
> Conforme a regra 14 do **MANIFESTO KDL V2**, *Design Responsivo não é apenas empilhar colunas (`flex-direction: column`)*. A referência possui uma composição pensada exclusivamente para mobile que preserva o impacto visual monumental, o protagonismo dos produtos e a clareza interativa.

```
┌────────────────────────────────────────────────────────────────────────┐
│                   COMPOSIÇÃO DESKTOP vs. MOBILE                        │
├───────────────────────────────────┬────────────────────────────────────┤
│         DESKTOP (1440px)          │           MOBILE (390px)           │
│  • Título horizontal 30vw         │  • Título condensado vertical 26vw │
│  • Cutout 40vw sobreposto         │  • Cutout 80vw central ampliado    │
│  • 3 cards inclinados lado a lado │  • 3 cards em leque / sobrepostos  │
│  • Trilha de mapa horizontal      │  • Trilha de entrega vertical      │
│  • CTA em 2 colunas amplas        │  • CTA empilhado com foto em foco  │
└───────────────────────────────────┴────────────────────────────────────┘
```

---

# 2. DETALHAMENTO DE ADAPTAÇÃO POR CENA

### 2.1 Navbar & Header
- **Desktop (1440px):** Logotipo à esquerda com `4vw`, botão de CTA cápsula *"Pedir Agora"* e botão *"Menu"* com 3 linhas à direita.
- **Mobile (390px):** Logotipo com `10vw`, botão CTA compacto (`font-size: 4vw`, padding reduzido) e botão hamburger acessível. Menu abre como drawer de tela inteira ou painel deslizante com cantos arredondados generosos (`rounded-[4vw]`).

### 2.2 Scene 01: Hero Section
- **Desktop:**
  - Título *"THE BURGER"* com `text-[30vw]`, ocupando a porção superior central.
  - Burger cutout com `size-[40vw]` centralizado exatamente na linha média sobreposta.
  - Palavra-marca inferior *"206"* com `text-[15vw]`.
  - Notas de rodapé alinhadas horizontalmente (esquerda e direita da base da viewport).
- **Mobile:**
  - Altura da seção ajustada para `min-h-[180vw]` para permitir espaçamento e respiração.
  - Título principal com `text-[26vw]` e `leading-[0.85]`.
  - Burger cutout ampliado proporcionalmente para `size-[80vw]` para garantir impacto imediato no polegar.
  - Badges rotacionados reposicionados para topo e lateral sem sobrepor o burger.
  - Blocos de texto inferiores migram de extremidades laterais para blocos centrados logo abaixo da imagem.

### 2.3 Scene 02: About & Tilted Cards
- **Desktop:** Três cards fotográficos (`20vw × 25vw`) dispostos lado a lado com rotações (`+5°`, `-5°`, `+8°`).
- **Mobile:**
  - Disposição em **agrupamento dinâmico em leque (*fan cluster*)** com rotações acentuadas (`-12°`, `0°`, `+12°`) e sobreposição no eixo Z (`translateY: +3vw`, `-6vw`, `+3vw`).
  - Cards com `width: 35vw` e `height: 38vw`, permitindo visualização compacta e muito estilosa na tela do celular sem estourar a largura horizontal.

### 2.4 Scene 03: Experience & Mascote
- **Desktop:** Mascote central cercado por badges em linha com largura `14vw`.
- **Mobile:**
  - Mascote ocupa posição de destaque central com escala adaptada (`width: 85vw`).
  - Selos informativos posicionados acima e abaixo da ilustração, mantendo legibilidade total em telas pequenas.

### 2.5 Scene 04: Banner Full-bleed
- **Desktop:** Banner panorâmico de largura 100% com altura `70vh` e `object-fit: cover`.
- **Mobile:** Banner com altura `80vw`, garantindo que o ponto focal (as mãos segurando o burger e o queijo escorrendo) fique centralizado e sem cortes indesejados.

### 2.6 Scene 05: Ingredientes Desconstruídos
- **Desktop:** Ingredientes flutuando em 4 cantos da viewport com o texto centralizado em 2 linhas.
- **Mobile:**
  - O texto *"EVERY LAYER PACKED WITH SIGNATURE FLAVOR"* ocupa 4 linhas centradas.
  - Os ingredientes flutuantes são agrupados em pares verticais com movimento de scroll otimizado para não cobrir a leitura em telas estreitas.

### 2.7 Scene 06: Mapa de Entrega & Bairros
- **Desktop:** Trilha de entrega estendida horizontalmente com cidades/bairros distribuídos em zigue-zague ao longo de 100vw.
- **Mobile:**
  - A trilha se transforma em uma **linha sinuosa vertical contínua** (*vertical journey timeline*).
  - Os cartões de bairros (Centro, Campanário, Piraporinha, etc.) aparecem alternados à esquerda e à direita da linha vertical conforme o usuário rola a página.

### 2.8 Scene 07: CTA Final & Lifestyle
- **Desktop:** Grid de 2 colunas (texto e botão de conversão à esquerda, fotografia lifestyle à direita).
- **Mobile:** Transição para coluna única com narrativa sequencial: 1) Título e texto → 2) Botão de CTA em destaque → 3) Fotografia lifestyle emoldurada com cantos curvos.

### 2.9 Scene 08: Rodapé & Wordmark Monumental
- **Desktop:** Wordmark *"206 BURGER"* com `text-[18vw]` em linha única estendida.
- **Mobile:** Wordmark com `text-[24vw]` que se ajusta através de `clamp()` para ocupar a totalidade da base da tela, com quebra elegante e impacto escultórico.
