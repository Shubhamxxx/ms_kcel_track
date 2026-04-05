# Use lightweight nginx image to serve the static HTML file
FROM nginx:alpine

# Copy the HTML file to nginx's default web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# nginx starts automatically
CMD ["nginx", "-g", "daemon off;"]
