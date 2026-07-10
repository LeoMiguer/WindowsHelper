<p align="center">
    <picture>
      <source media="(prefers-color-scheme: light)" srcset="/Archives/Images/DesignHelperLight.png" />
      <img src="/Archives/Images/DesignHelperDark.png" />
  </picture>
</p>
<h1 align="center">
  <span>Design Windows Helper</span>
</h1>
<p align="center">
  <span align="center">Uma ferramenta desenvolvida para solucionar problemas na Deisgn Cursos</span>
</p>
<h4 align="center">
    A <a href="https://www.microsoft.com/pt-br/windows/?r=1">Windows</a> Helping Tool
    <span> · </span>
    for <a href="https://www.instagram.com/designcursosoficial">Design Cursos</a>
    <span> · </span>
    By <a href="https://www.instagram.com/leomiguer/">LeoMiguer</a>
</h4>

## Utilidades

### 1. Instalar Office
Executa o arquivo de Setup que contem dentro do arquivo ISO do Office (É a ISO oficial do Office 2021), deve ser aguardada a conclusão da instalação, com o Office instalado, o usuário deve pressionar qualquer botão para continar para as outras etapas.
### 2. Ativar Windows /Office
Executa no PowerShell, como Administrador, o comando que abre o Ativador.
```bash
irm https://get.activated.win | iex
```
Com o ativador aberto, é recomendado o usuário digitar 4, e em seguida, 4 novamente. Dessa forma abre o Ativador KMS Online, e ativa ambos (Windows/Office).
### 3. Instalar Programas
Instala programas essenciais para os computadores dos alunos da Design, programas como:  \
 -> <a href="https://www.google.com/intl/pt-BR/chrome/">Google Chrome</a>;  \
 -> <a href="https://www.win-rar.com/">Winrar</a>;  \
 -> <a href="https://veyon.io/">Veyon</a>;  \
 -> <a href="https://gdevelop.io/">GDevelop</a>;  \
 -> <a href="https://www.capcut.com/">CapCut</a>;
### 4. Instalar Adobe
Copia uma pasta que contem os Aplicativos Adobe pré-instalados, deixando tudo pronto para rodar. Após tudo copiado, abre uma janela de instalação do photoshop, o único que precisa ser instalado manualmente, basta confirmar a pasta de destino e será instalado.  \
O programa copia e extrai os arquivos contidos em "\Archives\AdobeArchives\AdobePack.rar"
### 5. Wallpaper + ícones
Define o Wallpaper padrão Design Cursos, localizado em "\Archives\Wallpaper\WallpaperDesign.png".  \
Após definir o Wallpaper, é criado uma tarefa para que, toda vez que o Usuário fizer login, vai substituir o Wallpaper atual, pelo Wallpaper da Design Cursos, mantendo sempre o mesmo Wallpaper padronizado.  \
Já na parte de ícones, temos 2 opções:  \
· [1] Apagar os ícones velhos;  \
· [2] Manter os ícones velhos;  \
  \
Selecionando a opção de apagar, o programa apaga todos os ícones da área de trabalho, e cria os ícones dos Programas + Adobe (se existirem).  \
Selecionando a opção de manter, o programa apenas cria, se necessário, os ícones dos Programas + Adobe.
### 6. Configs [User, Screen, DNS]
**User:** Cria um usuário "Admin" como Administrador, e define o usuário "Design" (dos alunos) para um grupo de usuário padrão, ou seja, remove os previlégios de Administrador dos alunos.  \
  \
**Screen:** Desabilita o "Desligar Vídeo" e a "Suspensão" do computador, impedindo que os computadores hibernem.  \
  \
**DNS:** Faz alterações na rede, dentre elas:  
· Define um DNS fixo na máquina, esse DNS impede que os alunos acessem conteúdos adultos e inapropriados.  \
· Bloqueia o acesso aos sites de games, é um arquivo de hosts localizado em "\Archives\Configs\hosts", que é uma lista contendo vários sites apontados para o IP local da máquina, dessa forma toda vez que o aluno tentar acessar algum desses sites é redirecionado para o computador local, onde não existe esse site, impossibilitando o acesso aos games.  \
· Cria regras de Firewall, Entrada e Saída (+ de 70 regras cada), que bloqueia o acesso a rede de todos os exe's da pasta Adobe, impossibilitando que seja detectado a Ativação.  \
  \
Também remove aplicativos inúteis do Windows, e faz o bloqueio da Microsoft Store para os alunos não instalarem programas indevidamente.
### 7. Criar Backup
[Em desenvolvimento...]
## Contato
Instagram <a href="https://www.instagram.com/leomiguer/">@LeoMiguer</a>
