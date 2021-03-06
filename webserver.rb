apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'nginx' 

service 'nginx' do
	supports status: true
	action [:enable, :start]
end

