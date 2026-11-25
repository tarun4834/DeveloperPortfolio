# API Integration & REST Summary

**Author:** Tarun Kumar  
**Roll Number:** 2601730055  
**University:** K.R. Mangalam University  
**Batch:** 2026-30  

---

## 1. What is a REST API?
A REST (Representational State Transfer) API is an architectural style for networked applications that utilizes standard HTTP protocols to enable client-server communication. It provides stateless interactions where server resources are accessed and manipulated using standard HTTP verbs (such as `GET`, `POST`, `PUT`, `DELETE`) with uniform resource identifiers (URIs). Data exchange is predominantly formatted using lightweight JSON.

---

## 2. HTTP Status Codes Analysis

- **HTTP 200 (OK):**  
  Indicates that the client request has succeeded and the server successfully returned the requested resource. For example, issuing a `GET` request to `https://api.github.com/users/aj1000-g` returned `200 OK` with Tarun Kumar's profile payload.

- **HTTP 404 (Not Found):**  
  Indicates that the server could not locate the specific resource requested by the URI path. For example, testing `https://api.github.com/users/nonexistent_user_aj_999999` returned `404 Not Found`, confirming standard REST error handling.

---

## 3. The `jq` Data Filter Explained

The following `jq` command was executed to parse and transform the raw GitHub API response:
```bash
cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
```

### Breakdown of the Filter:
- `{ ... }`: Constructs a brand-new JSON object containing custom key names.
- `name: .name`: Maps the `name` field from the root JSON object (`"Tarun Kumar "`).
- `repos: .public_repos`: Extracts the user's count of public repositories (`5`).
- `followers: .followers`: Extracts the count of user followers (`0`).
- `joined: .created_at`: Extracts the ISO 8601 account creation timestamp (`"2026-10-06T00:29:20Z"`).

### Real Filtered Output:
```json
{
  "name": "Tarun Kumar ",
  "repos": 5,
  "followers": 0,
  "joined": "2026-10-06T00:29:20Z"
}
```

---

## 4. JSONPlaceholder Ingestion
Testing with `https://jsonplaceholder.typicode.com/posts` resulted in:
```bash
cat API/sample_posts.json | jq length
# Output: 100
```
This verified end-to-end multi-resource array payload processing.