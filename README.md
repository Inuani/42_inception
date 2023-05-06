# Inception: An Odyssey into the Inner Dockerverse

Welcome to Inception, a project that takes you deep into the heart of your inner mysterious and complex Docker-based infrastructure. This treacherous journey is not for the faint of heart, as it will challenge your wits and cunning in setting up a multi-container environment from the depths of your digital abyss.

## The Premise

You are tasked with creating an otherworldly infrastructure consisting of several services, each trapped in its own Docker container, bound by the confines of a virtual machine. Tread carefully, as each step you take will require you to craft your own Dockerfiles, compose files, and to resist the temptation of calling upon pre-built images from realms unknown (excluding Alpine and Debian, which are your only allies).

## The Cast

A motley crew of containers and configurations make up your haunted playground:

- NGINX: The Undying Guardian, protecting the entryway to the Dockerverse
  with its impenetrable TLSv1.2 or TLSv1.3 shield.
- WordPress + PHP-FPM: The Twin Serpents, binding the realm with their formidable
  web powers, slithering independently without the embrace of NGINX.
- MariaDB: The Soulkeeper, guarding the crypts of data in the darkness, undisturbed
  by the presence of NGINX.
- Volumes: The Ethereal Archives, preserving the essence of the WordPress database
  and website files in the realm of eternal storage.
- Networks: The Unseen Threads, weaving a sinister web of connections between the
  shadowy denizens of the Dockerverse.

## The Path to Darkness

To bring this sinister project to life, you must:

1. Use Docker Compose to create and manage your containers.
2. Build your own Docker images, drawing upon the dark powers of Alpine or Debian.
3. Utilize environment variables to hide your secrets from prying eyes.
4. Create a custom domain name that echoes your login, such as `login.42.fr`, and point it towards your local IP address.
5. Protect your infrastructure with TLSv1.2 or TLSv1.3, ensuring that your Nginx container is the sole entry point.

## The Rites of Summoning

Prepare your incantations and invoke the powers of the Inner Dockerverse by
performing the following rituals:

1. Clone this repository into the sacrificial altar of your choice.
2. Invoke the spirits by chanting `make`.

With these rites completed, you shall pierce the veil and gaze upon the DarkDockerverse.
May your journey into the shadows be as enlightening as it is treacherous.

## The Final Reckoning

Once your haunted infrastructure is up and running, dare to access your website and witness the dark magic you've unleashed. But beware: the spirits of containers past will be watching your every move, ensuring you've followed their rules to the letter.

Embrace the darkness, and may your journey into the Dockerverse be filled with spine-chilling discoveries and ungodly triumphs on yourse!
