# Woggle
Uma ferramenta para manipular redes wireless em roteadores com OpenWRT usando SSIDs

-MODO DE USO
    ./woggle.sh (on|off|auto) SSID

-EXEMPLO DE USO
    Por exemplo, um roteador com duas redes sem wireless: 1 - Guest; 2 - Casa


-INSTALANDO
    1-Vá para a pasta /sbin
    # cd /sbin

    2-Crie o arquivo woggle
    # touch woggle

    3-Abra-o para edição
    # vi woogle

    4-Copie o conteúdo do arquivo contido na URL abaixo e cole no arquivo
    https://raw.githubusercontent.com/rosbergrodrigues/Woggle/master/woggle

    5-Após salvar [ESC, :wq], dê permissões de Execução
    # chmod +x woggle


-EXECUTANDO
    Agora você pode executar script de qualquer lugar ou agendar através do cron, vamos lá
    -Executando
    # ./woggle on Casa // Para ativar a rede
    # ./woggle off Casa // Para desativar a rede
    # ./woggle auto Casa // Se a rede Casa estiver ativa, então ele desativa, e vice-versa

    OBS: Se houver espaços no nome da sua rede você deve inserir entre aspas simples:
    # ./woggle on 'Rede De Casa' // Para ativar a rede

    Caso pretenda usar o cron lá vai um exemplo
    # crontab -e

    0 6 * * * /sbin/woggle on 'Rede De Casa' // Ativa a rede todos os dias as 6h [6 AM]
    0 22 * * * /sbin/woggle off 'Rede De Casa' // Desativa a rede todos os dias as 23h [11 PM]

Use com quiser, distribua como quiser, apenas mantenha os créditos.
Enjoy It ;)
