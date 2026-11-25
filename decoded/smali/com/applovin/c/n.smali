.class public abstract Lcom/applovin/c/n;
.super Ljava/lang/Object;


# static fields
.field private static a:[Lcom/applovin/c/n;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/applovin/c/n;

    sput-object v0, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/c/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/applovin/c/o;Landroid/content/Context;)Lcom/applovin/c/n;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/applovin/c/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/applovin/c/n;->b(Ljava/lang/String;Lcom/applovin/c/o;Landroid/content/Context;)Lcom/applovin/c/n;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/applovin/c/n;->b(Landroid/content/Context;)Lcom/applovin/c/n;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/c/n;->j()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AppLovinSdk"

    const-string/jumbo v1, "Unable to initialize AppLovin SDK: SDK object not created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/applovin/c/n;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/applovin/c/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/applovin/c/p;->b(Landroid/content/Context;)Lcom/applovin/c/o;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/applovin/c/n;->b(Ljava/lang/String;Lcom/applovin/c/o;Landroid/content/Context;)Lcom/applovin/c/n;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/applovin/c/o;Landroid/content/Context;)Lcom/applovin/c/n;
    .locals 7

    const/4 v0, 0x0

    sget-object v2, Lcom/applovin/c/n;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/applovin/c/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v3, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/applovin/c/n;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/applovin/a/b/e;

    invoke-direct {v0}, Lcom/applovin/a/b/e;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/applovin/c/n;->a(Ljava/lang/String;Lcom/applovin/c/o;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/applovin/c/n;

    sget-object v3, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    array-length v3, v3

    aput-object v0, v1, v3

    sput-object v1, Lcom/applovin/c/n;->a:[Lcom/applovin/c/n;

    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppLovinSdk"

    const-string/jumbo v3, "Failed to build AppLovin SDK. Try cleaning application data and starting the application again."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to build AppLovin SDK"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Ljava/lang/String;Lcom/applovin/c/o;Landroid/content/Context;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d()Lcom/applovin/c/f;
.end method

.method public abstract f()Lcom/applovin/c/l;
.end method

.method public abstract j()V
.end method
