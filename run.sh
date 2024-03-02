#! /bin/bash

curl -s -X POST \
	-H "Content-Type: application/json" \
	-d $'{
    "input": {
      "file": "https://public-pucket.s3.eu-central-1.amazonaws.com/audio.wav?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFYaDGV1LWNlbnRyYWwtMSJGMEQCIFMMFXn%2FC%2FiOysunkiR75xeoiwCk7kEJMjbhN5D97anVAiBmeH%2ByWa9pEBSn6TZyPzhA0lbkltDoky0%2FgCDsIinpiyroAghPEAEaDDc1MTA3NDM2NTU4MyIMUOGol%2F0r34yN2pa6KsUCsBHRmN%2Fj7gQ4Pd0v%2FZP4%2FgReoUkjumzzhNjHCjcOSCoiuoxwhvNNV%2FAOL5ATEyrYt%2FiIvHsz71rAHPoTWmB0aDGHHG9IIq%2FcfSZSoQcy1RUXL%2FmXdc%2FQ6ar%2F0cssaGw0h4WNafb00PmC1HuqmNuauw2zfXFHIZJJn9vMWhffzVh076nzLkC9b27qKN7rlKO7Sn61x3mYTHk5RmE1M%2B%2Bn8Kv%2FTKa3VcufGiC%2BDRGggylElxwKvkwLNb3TJF%2FOKEW8lQWwOhpp4Bw3qRlKm5PZhL2K7bAnbgwZDw9lRbe2RAjoof8SDxT%2FEe4gdSlTRTScZ8YYFl860fVdB0xtW%2B1lCzYx7GWZK0mY8kefH%2BImjI93jlV6mtXT7Z02R4%2BiOP2PdAT8XtMDgaz5InEwKt72TCI7%2BXAeGQdIuYvv7MbMSidnxlNnpTCbuY6vBjq0AueaBXN%2BJZsUeXZb9E3LnAFt%2FfqOZmVEdOBbNzqcUM3jbmDeJILFFzYPefzfAImfOEbfdBALdBrn5TBN6vP08jfCwv5IyufB42bhB9wRbCPOVRqGh5Zm5Bs%2BtPLrIzF5Mj6bCHRU0d1t9SNMTEHxL5xtm5D%2FHCoINXL5alZwTqVFh%2BMrLMkQ6hxalJ%2FSj1XZokL86RYrK0CN6byD2qa7smT0lbHSkbTxgKW11BiWSC4rnPp%2FqR8bK2tmCIiYp42Rtq%2BSU%2FNntfhkVGZ7Bw8nFcmOpLSDZ%2FcAPZuuOIl1NJkY%2BP0MkXNXpWtBE5FfuebqtFlvP%2BxAUwC5XvcGyYwwOYUHtOzrf%2BWpMRRfQVROsl0HCm977l0lH9sEVaiL9JgZWAyE8z6oMlfhzLmYuBneZy0v8UIj&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240302T214029Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA25X4FKCHX27Z7AFQ%2F20240302%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Signature=8addd37136722122343df8704e5298701a2fab74893974d46dc73d09c6f979ec"
    }
  }' \
	http://localhost:5002/predictions
