#/bin/bash
sudo apt-key \
	adv --keyserver pgp.mit.edu \
	--recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" \
	| \
sudo tee /etc/apt/sources.list.d/mono-xamarin.list

sudo apt-get update
sudo apt-get -q -y install mono-complete monodevelop

mono -V
monodevelop

