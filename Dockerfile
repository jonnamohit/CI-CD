# Use official Nginx image to serve static website
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy project files into nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
