void main() {
  String? username; // nullable
  String displayName = username ?? "Guest"; // default value if null

  print("Welcome, $displayName");

  // Using null-aware access:
  int? length = username?.length; // won't crash
  print("Username length: $length");

  // Using null assertion (⚠️ dangerous if really null)
  try {
    print("Force unwrap: ${username!.toUpperCase()}");
  } catch (e) {
    print("Caught error: $e");
  }

  // Late example
  late String userRole;
  userRole = "Admin";
  print("Role: $userRole");
}