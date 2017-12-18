system_policies = 'HKLM\Software\Microsoft\Windows\CurrentVersion\policies\system'
registry_key system_policies do
  values [{
    :name => 'EnableLUA' ,
    :type => :dword,
    :data => 0
    }]

  end

    registry_key 'Disable Prompt' do
  key system_policies
  values [{
    name: 'ConsentPromptBehaviorAdmin',
    type: :dword,
    data: 0
    }]
end
