.class Lcom/tenjin/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tenjin/android/b;


# direct methods
.method constructor <init>(Lcom/tenjin/android/b;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/tenjin/android/c;->a:Lcom/tenjin/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/tenjin/android/c;->a:Lcom/tenjin/android/b;

    invoke-static {v0}, Lcom/tenjin/android/b;->a(Lcom/tenjin/android/b;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tenjinInstallPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "tenjinFirstLaunchKey"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 216
    const-string/jumbo v2, "Authorization"

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tenjin/android/c;->a:Lcom/tenjin/android/b;

    invoke-static {v4}, Lcom/tenjin/android/b;->b(Lcom/tenjin/android/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 224
    iget-object v1, p0, Lcom/tenjin/android/c;->a:Lcom/tenjin/android/b;

    invoke-static {v1}, Lcom/tenjin/android/b;->c(Lcom/tenjin/android/b;)Ljava/util/Map;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/tenjin/android/a;

    invoke-direct {v2}, Lcom/tenjin/android/a;-><init>()V

    iget-object v3, p0, Lcom/tenjin/android/c;->a:Lcom/tenjin/android/b;

    invoke-static {v3}, Lcom/tenjin/android/b;->d(Lcom/tenjin/android/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4}, Lcom/tenjin/android/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "tenjinFirstLaunchKey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/tenjin/android/c;->a:Lcom/tenjin/android/b;

    invoke-static {v0}, Lcom/tenjin/android/b;->c(Lcom/tenjin/android/b;)Ljava/util/Map;

    move-result-object v0

    .line 235
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Lcom/tenjin/android/a;

    invoke-direct {v1}, Lcom/tenjin/android/a;-><init>()V

    iget-object v2, p0, Lcom/tenjin/android/c;->a:Lcom/tenjin/android/b;

    invoke-static {v2}, Lcom/tenjin/android/b;->d(Lcom/tenjin/android/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/tenjin/android/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method
