# Topicos Especiales de Telematica - Reto 3 - Julián David Bueno Londoño

## Maquinas necesarias

- LoadBalancer (Ubuntu 22.04) con puertos 22,80,443 abiertos
- MySQL (Ubuntu 22.04) con puertos 22,80,443,3306,33060 abiertos
- NFS (Ubuntu 22.04) con puertos 22,2049 abiertos
- Drupal (Ubuntu 22.04) con puertos 22,80,443,2049 abiertos (Cualquier cantidad)

## Proceso de instalación

### NFS

- clonar el repositorio `git clone https://github.com/jdbuenol/TET-Reto3.git`
- meterse al directorio `cd TET-Reto3`
- instalar Docker `sudo sh installdocker.sh`
- ingresar al directorio NFS `cd NFS`
- poner a correr el NFS dockerizado `sh startNFS.sh`

### MySQL

- clonar el repositorio `git clone https://github.com/jdbuenol/TET-Reto3.git`
- meterse al directorio `cd TET-Reto3`
- instalar Docker `sudo sh installdocker.sh`
- ingresar al directorio MySQL `cd MySQL`
- poner a correr el MySQL dockerizado `sh startSQL.sh`

### Instancias de Drupal

- clonar el repositorio `git clone https://github.com/jdbuenol/TET-Reto3.git`
- meterse al directorio `cd TET-Reto3`
- instalar Docker `sudo sh installdocker.sh`
- ingresar al directorio Drupal `cd Drupal`
- editar el archivo host.sh cambiando la ip por la ip publica sde la maquina corriendo el NFS
- poner a correr el Drupal dockerizado `sh setup.sh`
- ingresar a la IP publica de la maquina Drupal desde el navegador:
- Click `Save and continue`
- Click `Save and continue`
- Llenar los campos: 
  - Database name con 'Drupal'
  - Database username con 'root'
  - Database password con 'PWORD'
  - y el Host se llena con la ip publica de la maquina en que esta corriendo MySQL
- Click `Save and continue`
- Esperar a que se termina de instalar Drupal
- Llenar los datos del sitio web con la información correspondiente
- Click `Save and continue`
- El sitio web corre satisfactoriamente

### LoadBalancer

- clonar el repositorio `git clone https://github.com/jdbuenol/TET-Reto3.git`
- meterse al directorio `cd TET-Reto3`
- instalar Docker `sudo sh installdocker.sh`
- ingresar al directorio Apache `cd Apache`
- Editar el archivo '000-default.conf' de tal forma que dentro del tag  \<proxy> hayan lineas con el formato 'BalancerMember \<DRUPAL-IP>' la cantidad de lineas siendo el numero de instancias de Drupal y cambiando '\<DRUPAL-IP>' por la ip publica de cada maquina Drupal
- poner a correr el load balancer `sh runLoadBalancer.sh`
- El sitio web se observa satisfactoriamente