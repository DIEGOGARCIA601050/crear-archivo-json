#!/bin/sh

function logWarn() {
        START='\033[01;33m'
        END='\033[00;00m'
        MESSAGE=${@:-""}
        echo -e "${START}${MESSAGE}${END}"
}

function logInfo() {
        START='\033[01;32m'
        END='\033[00;00m'
        MESSAGE=${@:-""}
        echo -e "${START}${MESSAGE}${END}"
}

function logError() {
        START='\033[01;31m'
        END='\033[00;00m'
        MESSAGE=${@:-""}
        echo -e "${START}${MESSAGE}${END}"
}

function log() {
        MESSAGE=${@:-""}
        echo -e "${MESSAGE}"
}

logInfo "Iniciando Script..."

FILEJSON=./cv.json

if [ -f "$FILEJSON" ]; then
    logInfo "Archivo ya Existe (Finaliza Script)"
    exit
fi

logWarn "Ingrese Nombre"
read DATA1
log ""

logWarn "Ingrese Label"
read DATA2
log ""

logWarn "Ingrese image"
read DATA3
log ""

logWarn "Ingrese email"
read DATA4
log ""

logWarn "Ingrese phone"
read DATA5
log ""

logWarn "Ingrese url"
read DATA6
log ""

logWarn "Ingrese summary"
read DATA7
log ""

logWarn "Ingrese address"
read DATA8

while true; do
    read -p "Desea Escribir el Archivo S/N?" yn
    case $yn in
        [Ss]* ) logInfo "Continua la Ejecución. !"; break;;
        [Nn]* ) logError "Finaliza la Ejecución. !"; exit;;
        * ) logWarn "Seleccione Si o No.";;
    esac
done

cat > $FILEJSON <<EOF
{
  "basics": {
    "name": "$DATA1",
    "label": "$DATA2",
    "image": "$DATA3",
    "email": "$DATA4",
    "phone": "$DATA5",
    "url": "$DATA6",
    "summary": "$DATA7",
    "location": {
      "address": "$DATA8",
      "postalCode": "$DATA9",
      "city": "$DATA10",
      "countryCode": "$DATA11",
      "region": "$DATA12"
    },
    "profiles": [
      {
        "network": "LinkedIn",
        "username": "midudev",
        "url": "https://linkedin.com/in/midudev"
      },
      {
        "network": "X",
        "username": "midudev",
        "url": "https://x.com/midudev"
      },
      {
        "network": "GitHub",
        "username": "midudev",
        "url": "https://github.com/midudev"
      }
    ]
  },
  "work": [
    {
      "name": "midudev",
      "position": "Divulgador sobre Programación Web",
      "url": "https://twitch.tv/midudev",
      "startDate": "2021-01-01",
      "endDate": null,
      "summary": "Streamer de programación más visto en Español en Twitch. +1 millón de seguidores entre todas mis redes sociales. Reconocido por Google, Microsoft y GitHub por mi impacto en la comunidad de desarrolladores.",
      "highlights": [
        "Started the company"
      ]
    },
    {
      "name": "Adevinta",
      "position": "Lead Frontend Architect",
      "url": "https://twitch.tv/midudev",
      "startDate": "2016-06-01",
      "endDate": "2022-09-01",
      "summary": "Lideré una convergencia técnica entre diferentes productos y migramos una arquitectura monolítica a otra más flexible y optimizada. Fomenté buenas prácticas y mejoras en la cultura de rendimiento, además de la entrega rápida de valor a los usuarios.",
      "highlights": [
        "Started the company"
      ]
    },
    {
      "name": "Hubii",
      "position": "Senior FrontEnd Developer",
      "startDate": "2011-03-01",
      "endDate": "2016-05-01",
      "summary": "Desarrollé una plataforma de noticias geolocalizadas y una API para consumir la información. Escalé los servicios para soportar la carga de más de cientos de miles de peticiones al día. Recorté los tiempos de entrega y despliegues a producción a la mitad. Colaboré con Mozilla y Telefónica para desarrollar la primera app para televisores con FirefoxOS.",
      "highlights": [
        "Started the company"
      ]
    }
  ],
  "volunteer": [{
    "organization": "Organization",
    "position": "Volunteer",
    "url": "https://organization.com/",
    "startDate": "2012-01-01",
    "endDate": "2013-01-01",
    "summary": "Description…",
    "highlights": [
      "Awarded 'Volunteer of the Month'"
    ]
  }],
  "education": [{
    "institution": "Universitat Oberta de Catalunya",
    "url": "https://www.uoc.edu/portal/es/index.html",
    "area": "Ingeniero de Software",
    "studyType": "Bachelor",
    "startDate": "2003-01-01",
    "endDate": "2009-01-01",
    "score": "4.0",
    "courses": [
      "DB1101 - Basic SQL"
    ]
  }],
  "awards": [{
    "title": "Award",
    "date": "2014-11-01",
    "awarder": "Company",
    "summary": "There is no spoon."
  }],
  "certificates": [{
    "name": "Certificate",
    "date": "2021-11-07",
    "issuer": "Company",
    "url": "https://certificate.com"
  }],
  "publications": [{
    "name": "Publication",
    "publisher": "Company",
    "releaseDate": "2014-10-01",
    "url": "https://publication.com",
    "summary": "Description…"
  }],
  "skills": [
    {
      "name": "HTML",
      "level": "Master",
      "keywords": [
        "Desarrollo Web", "Frontend"
      ]
    },
    {
      "name": "CSS",
      "level": "Master",
      "keywords": [
        "Desarrollo Web", "Frontend", "Diseño Responsive"
      ]
    },
    {
      "name": "JavaScript",
      "level": "Master",
      "keywords": [
        "Desarrollo Web", "Frontend", "Backend", "Fullstack"
      ]
    },
    {
      "name": "Tailwind",
      "level": "Avanzado",
      "keywords": [
        "Desarrollo Web", "Frontend", "CSS Framework", "Diseño Responsive"
      ]
    },
    {
      "name": "TypeScript",
      "level": "Avanzado",
      "keywords": [
        "Desarrollo Web", "Frontend", "Backend", "JavaScript Superset"
      ]
    },
    {
      "name": "Node",
      "level": "Avanzado",
      "keywords": [
        "Desarrollo Web", "Backend", "JavaScript", "Servidor"
      ]
    },
    {
      "name": "MySQL",
      "level": "Avanzado",
      "keywords": [
        "Bases de Datos", "SQL", "Almacenamiento de Datos", "Backend"
      ]
    },
    {
      "name": "Git",
      "level": "Avanzado",
      "keywords": [
        "Control de Versiones", "Colaboración", "Código Fuente"
      ]
    },
    {
      "name": "GitHub",
      "level": "Avanzado",
      "keywords": [
        "Control de Versiones", "Colaboración", "Código Fuente", "Git"
      ]
    },
    {
      "name": "Next.js",
      "level": "Avanzado",
      "keywords": [
        "Desarrollo Web", "Frontend", "React Framework", "SSR", "Static Generation"
      ]
    },
    {
      "name": "React",
      "level": "Avanzado",
      "keywords": [
        "Desarrollo Web", "Frontend", "JavaScript Library", "UI"
      ]
    }
  ],
  "languages": [
    {
      "language": "Spanish",
      "fluency": "Native speaker"
    },
    {
      "language": "English",
      "fluency": "Advanced"
    }
  ],
  "interests": [{
    "name": "Wildlife",
    "keywords": [
      "Ferrets",
      "Unicorns"
    ]
  }],
  "references": [{
    "name": "Jane Doe",
    "reference": "Reference…"
  }],
  "projects": [
    {
      "name": "mars.codes",
      "isActive": true,
      "description": "Historia interactiva con retos de programación para viajar a Marte",
      "highlights": [
        "Elige tu propia aventura",
        "En desarrollo"
      ],
      "url": "https://mars.codes"
    },
    {
      "name": "AdventJS",
      "isActive": true,
      "description": "Retos de programación en JavaScript para cada día de diciembre hasta Navidad",
      "highlights": [
        "+1 millón de visitas",
        "Multidioma",
        "JavaScript & TypeScript"
      ],
      "url": "https://advent.js/dev"
    },
    {
      "name": "Codember",
      "isActive": true,
      "description": "Juego interactivo de programación con retos y secretos",
      "highlights": [
        "+2000 usuarios activos",
        "Retos para cualquier lenguaje"
      ],
      "url": "https://codember.dev"
    },
    {
      "name": "codi.link",
      "isActive": true,
      "description": "Playground de código HTML, CSS y JavaScript para compartir",
      "highlights": [
        "100k visitas al mes",
        "Desarrollado por la comunidad"
      ],
      "url": "https://codi.link",
      "github": "https://github.com/midudev/codi.link"
    },
    {
      "name": "Pruebas Técnicas",
      "isActive": true,
      "description": "Lista de pruebas técnicas de empresas para practicar programación",
      "highlights": [
        "100% gratuito",
        "+500 soluciones de la comunidad"
      ],
      "url": "https://pruebastecnicas.com",
      "github": "https://github.com/midudev/pruebas-tecnicas"
    },
    {
      "name": "miduConf",
      "description": "Conferencia de programación en streaming para la comunidad hispanohablante con charlas top",
      "highlights": [
        "+15k tickets repartidos",
        "+50k espectadores en directo"
      ],
      "url": "https://miduconf.com"
    }
  ]
}
EOF
logInfo "Creado Archivo JSON."
log ""
logInfo "Script Completado."