# Use official Python image

	FROM python:3.11-slim

	# Set working directory
	WORKDIR /app

	# Copy Python file
	COPY app.py .

	# Run the app
	CMD ["python", "app.py"]
