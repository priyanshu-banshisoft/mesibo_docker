FROM mesibo/on-premise

# Expose port 8080
EXPOSE 8080

# Start the Mesibo On-Premise server
CMD ["/opt/mesibo/on-premise/bin/mesibo-server"]
