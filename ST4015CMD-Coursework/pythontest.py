import base64

# This data represents the sensitive information you are obfuscating
sensitive_data = "admin_password_2026! @secret"

# Encoding the string into a Base64 payload
encoded_payload = base64.b64encode(sensitive_data.encode())

print(f"Original Data: {sensitive_data}")
print(f"Obfuscated Payload: {encoded_payload}")