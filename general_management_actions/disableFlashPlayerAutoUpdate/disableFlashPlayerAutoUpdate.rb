file '/Library/Application Support/Macromedia/mms.cfg' do
    action  :create
    content 'AutoUpdateDisable=1 SilentAutoUpdateEnable=0'
    mode    '0755'
    owner    'root'
    group    'wheel'
end
