class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCaDMlafOQSrdR+L63kQkefmEsf/2k/tkEtG8Q6vPSAj2KVoH0LjopLfHfF5GsrApsnfJRzOJJehr29dyMD0+TMKAN+B5W7J2Uw8t6eW5CGBAoIJsGJcUC+apfbP+LqtFKUApw01NugieKC2OJPhhQbgyz71BmaEOBa2QPwq90ZoAL8ODvLG18igVKi9SpIdXisH1Ww0TLZeI70Foy9nF0HbzruV0VGar6E21qGGiN5RamDvXiUGGWvA5SIlME7E72cuB3zYt2nkMFZHuM5himr4LvjFSphQodkIl+5QcXk5sAuoQF5E72iDtU2XFJU68eFq+PJdjHDnjf7EkEx6KQH',
	}  
}
