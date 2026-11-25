.class Lcom/applovin/a/b/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/applovin/a/b/e;

.field private final b:Lcom/applovin/c/l;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/applovin/c/o;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/e;Lcom/applovin/c/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {p1}, Lcom/applovin/a/b/e;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/bv;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/applovin/a/b/bv;->d:Lcom/applovin/c/o;

    invoke-virtual {p1}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/bv;->b:Lcom/applovin/c/l;

    return-void
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->J:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v4}, Lcom/applovin/a/b/e;->n()Lcom/applovin/a/b/aj;

    move-result-object v4

    new-instance v5, Lcom/applovin/a/b/bf;

    invoke-static {v3}, Lcom/applovin/c/g;->a(Ljava/lang/String;)Lcom/applovin/c/g;

    move-result-object v3

    sget-object v6, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-direct {v5, v3, v6}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    invoke-virtual {v4, v5}, Lcom/applovin/a/b/aj;->d(Lcom/applovin/a/b/bf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->K:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->n()Lcom/applovin/a/b/aj;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/bf;

    sget-object v2, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    sget-object v3, Lcom/applovin/c/h;->b:Lcom/applovin/c/h;

    invoke-direct {v1, v2, v3}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/aj;->d(Lcom/applovin/a/b/bf;)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->aM:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->o()Lcom/applovin/a/b/al;

    move-result-object v0

    sget-object v1, Lcom/applovin/a/b/g;->c:Lcom/applovin/a/b/bf;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/al;->d(Lcom/applovin/a/b/bf;)V

    :cond_2
    return-void
.end method

.method private d()V
    .locals 6

    const/16 v5, 0x266

    iget-object v0, p0, Lcom/applovin/a/b/bv;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "com.applovin.sdk.impl.lastKnownVersionCode"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v5, :cond_0

    const-string/jumbo v0, "TaskInitializeSdk"

    const-string/jumbo v2, "SDK has been updated since last run. Continuing..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->g()Lcom/applovin/a/b/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/be;->d()V

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->g()Lcom/applovin/a/b/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/be;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.sdk.impl.lastKnownVersionCode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "TaskInitializeSdk"

    const-string/jumbo v2, "SDK has not been updated since last run. Continuing..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v2}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v2

    const-string/jumbo v3, "TaskInitializeSdk"

    const-string/jumbo v4, "Unable to check for SDK update"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.sdk.impl.lastKnownVersionCode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "com.applovin.sdk.impl.lastKnownVersionCode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw v0
.end method


# virtual methods
.method a()Z
    .locals 3

    const-string/jumbo v0, "android.permission.INTERNET"

    iget-object v1, p0, Lcom/applovin/a/b/bv;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/a/b/dc;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bv;->b:Lcom/applovin/c/l;

    const-string/jumbo v1, "TaskInitializeSdk"

    const-string/jumbo v2, "Unable to enable AppLovin SDK: no android.permission.INTERNET"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 6

    new-instance v0, Lcom/applovin/a/b/bj;

    iget-object v1, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-direct {v0, v1}, Lcom/applovin/a/b/bj;-><init>(Lcom/applovin/a/b/e;)V

    iget-object v1, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v1

    sget-object v2, Lcom/applovin/a/b/bx;->a:Lcom/applovin/a/b/bx;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;J)V

    return-void
.end method

.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/applovin/a/b/bv;->b:Lcom/applovin/c/l;

    const-string/jumbo v1, "TaskInitializeSdk"

    const-string/jumbo v4, "Initializing AppLovin SDK 6.1.4..."

    invoke-interface {v0, v1, v4}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/a/b/bv;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/applovin/a/b/bv;->d()V

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->g()Lcom/applovin/a/b/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/a/b/be;->c()V

    sget-object v0, Lcom/applovin/a/b/bb;->b:Lcom/applovin/a/b/bd;

    invoke-virtual {v1, v0}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bv;->d:Lcom/applovin/c/o;

    invoke-virtual {v1, v0}, Lcom/applovin/a/b/be;->a(Lcom/applovin/c/o;)V

    invoke-virtual {v1}, Lcom/applovin/a/b/be;->b()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->l()Lcom/applovin/a/b/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/bh;->c()V

    const-string/jumbo v1, "ad_imp_session"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/bh;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-static {v0}, Lcom/applovin/a/b/i;->b(Lcom/applovin/a/b/e;)V

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/bv;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/dj;->d(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/applovin/a/b/bv;->c()V

    invoke-virtual {p0}, Lcom/applovin/a/b/bv;->b()V

    iget-object v0, p0, Lcom/applovin/a/b/bv;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.sdk.impl.isFirstRun"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.sdk.impl.isFirstRun"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->s()Lcom/applovin/a/b/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/ar;->a()V

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->r()Lcom/applovin/c/k;

    move-result-object v0

    const-string/jumbo v1, "landing"

    invoke-interface {v0, v1}, Lcom/applovin/c/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/applovin/a/b/bv;->b:Lcom/applovin/c/l;

    const-string/jumbo v4, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AppLovin SDK 6.1.4 initialization "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "succeeded"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/applovin/a/b/bv;->b:Lcom/applovin/c/l;

    const-string/jumbo v4, "TaskInitializeSdk"

    const-string/jumbo v5, "Unable to intialize SDK, disabling the SDK"

    invoke-interface {v1, v4, v5, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/applovin/a/b/bv;->b:Lcom/applovin/c/l;

    const-string/jumbo v4, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AppLovin SDK 6.1.4 initialization "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "succeeded"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "failed"

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "failed"

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v4, p0, Lcom/applovin/a/b/bv;->b:Lcom/applovin/c/l;

    const-string/jumbo v5, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AppLovin SDK 6.1.4 initialization "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/applovin/a/b/bv;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "succeeded"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string/jumbo v0, "failed"

    goto :goto_4
.end method
