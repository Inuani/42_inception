# Inception: A Darkly Intriguing Journey into the Dockerverse

Welcome to Inception, an eerily engrossing project that takes you deep into the heart of a mysterious and complex Docker-based infrastructure. This treacherous journey is not for the faint of heart, as it will challenge your wits and cunning in setting up a multi-container environment from the depths of the digital abyss.

## The Premise

You are tasked with creating an otherworldly infrastructure consisting of several services, each trapped in its own Docker container, bound by the confines of a virtual machine. Tread carefully, as each step you take will require you to craft your own Dockerfiles, compose files, and to resist the temptation of calling upon pre-built images from realms unknown (excluding Alpine and Debian, which are your only allies).

## The Cast

A motley crew of containers and configurations make up your haunted playground:

- **Nginx**: The gateway to the underworld, ushering in visitors through the port 443 with the ghostly whispers of TLSv1.2 or TLSv1.3.
- **WordPress**: An eerie presence lurking in the shadows, wielding the power of PHP-FPM, but devoid of Nginx's companionship.
- **MariaDB**: A solitary spirit, bereft of Nginx, but holding the key to the WordPress container's secrets.
- **Volumes**: Ethereal storerooms for your WordPress database and website files.
- **Network**: An arcane connection that binds your containers together, allowing them to communicate from the great beyond.

## The Path to Darkness

To bring this sinister project to life, you must:

1. Use Docker Compose to create and manage your containers.
2. Build your own Docker images, drawing upon the dark powers of Alpine or Debian.
3. Utilize environment variables to hide your secrets from prying eyes.
4. Create a custom domain name that echoes your login, such as `login.42.fr`, and point it towards your local IP address.
5. Protect your infrastructure with TLSv1.2 or TLSv1.3, ensuring that your Nginx container is the sole entry point.

## Beware the Traps

As you descend into the shadows, you must avoid the pitfalls and traps that await you:

- Steer clear of the `latest` tag.
- Never reveal your passwords in your Dockerfiles.
- Do not use `network: host`, `--link`, or `links:` in your configurations.
- Shun the use of infinite loops or hacky patches, such as `tail -f`, `bash`, `sleep infinity`, or `while true`.

## The Final Reckoning

Once your haunted infrastructure is up and running, dare to access your website and witness the dark magic you've unleashed. But beware: the spirits of containers past will be watching your every move, ensuring you've followed their rules to the letter.

Embrace the darkness, and may your journey into the Dockerverse be filled with spine-chilling discoveries and ungodly triumphs!
