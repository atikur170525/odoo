# Use the official Odoo image
FROM odoo:18.0

# Install extra dependencies if needed (optional)
USER root
RUN apt-get update && apt-get install -y \
    nano \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Set up custom modules directory (optional)
RUN mkdir -p /mnt/extra-addons
RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo
