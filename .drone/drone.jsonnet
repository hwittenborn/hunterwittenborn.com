local buildAndPublish() = {
    name: "build-and-publish",
    kind: "pipeline",
    type: "docker",
    volumes: [{name: "deploy-dir", host: {path: "/var/www/hunterwittenborn.com"}}],
    trigger: {
        branch: ["main"],
        repo: ["hwittenborn/hunterwittenborn.com"]
    },
    steps: [{
        name: "build-and-publish",
        image: "proget.hunterwittenborn.com/docker/makedeb/makedeb:ubuntu-jammy",
        volumes: [{name: "deploy-dir", path: "/var/www/hunterwittenborn.com"}],
        commands: [
            "curl -q \"https://proget.$${hw_url}/debian-feeds/prebuilt-mpr.pub\" | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null",
            "echo \"deb [signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg]\" https://proget.$${hw_url} prebuilt-mpr focal | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list",
            "sudo apt-get update",
            "sudo apt-get install hugo -y",
            "find /var/www/hunterwittenborn.com/ -mindepth 1 -maxdepth 1 -exec sudo rm -rf '{}' +",
            "sudo hugo -d /var/www/hunterwittenborn.com --minify"
        ]
    }]
};

[buildAndPublish()]

// vim: set syntax=javascript ts=4 sw=4 expandtab:
