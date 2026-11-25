.class Lcom/crashlytics/android/c/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# instance fields
.field private final a:Lb/a/a/a/a/f/c;


# direct methods
.method public constructor <init>(Lb/a/a/a/a/f/c;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/crashlytics/android/c/ch;->a:Lb/a/a/a/a/f/c;

    .line 43
    return-void
.end method

.method public static a(Lb/a/a/a/a/f/c;Lcom/crashlytics/android/c/ao;)Lcom/crashlytics/android/c/ch;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-interface {p0}, Lb/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v3, "preferences_migration_complete"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    new-instance v3, Lb/a/a/a/a/f/d;

    invoke-direct {v3, p1}, Lb/a/a/a/a/f/d;-><init>(Lb/a/a/a/q;)V

    .line 27
    invoke-interface {p0}, Lb/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "always_send_reports_opt_in"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Lb/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "always_send_reports_opt_in"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 30
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v3}, Lb/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v3, "always_send_reports_opt_in"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    invoke-interface {p0}, Lb/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "always_send_reports_opt_in"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p0, v0}, Lb/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 36
    :cond_0
    invoke-interface {p0}, Lb/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "preferences_migration_complete"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p0, v0}, Lb/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 38
    :cond_1
    new-instance v0, Lcom/crashlytics/android/c/ch;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/c/ch;-><init>(Lb/a/a/a/a/f/c;)V

    return-object v0

    :cond_2
    move v0, v2

    .line 27
    goto :goto_0
.end method


# virtual methods
.method a(Z)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/crashlytics/android/c/ch;->a:Lb/a/a/a/a/f/c;

    iget-object v1, p0, Lcom/crashlytics/android/c/ch;->a:Lb/a/a/a/a/f/c;

    invoke-interface {v1}, Lb/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 47
    return-void
.end method

.method a()Z
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/c/ch;->a:Lb/a/a/a/a/f/c;

    invoke-interface {v0}, Lb/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
