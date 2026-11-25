.class public Lcom/sponsorpay/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/sponsorpay/c/m;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sponsorpay/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/sponsorpay/c/m;

    invoke-direct {v0}, Lcom/sponsorpay/c/m;-><init>()V

    sput-object v0, Lcom/sponsorpay/c/m;->a:Lcom/sponsorpay/c/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/c/m;->b:Ljava/util/Set;

    .line 22
    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v2, Lcom/sponsorpay/c/m;->a:Lcom/sponsorpay/c/m;

    monitor-enter v2

    .line 38
    :try_start_0
    sget-object v0, Lcom/sponsorpay/c/m;->a:Lcom/sponsorpay/c/m;

    .line 2052
    iget-object v0, v0, Lcom/sponsorpay/c/m;->b:Ljava/util/Set;

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    monitor-exit v2

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/c/e;

    .line 44
    invoke-interface {v0}, Lcom/sponsorpay/c/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/sponsorpay/c/e;)Z
    .locals 2

    .prologue
    .line 25
    sget-object v1, Lcom/sponsorpay/c/m;->a:Lcom/sponsorpay/c/m;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/sponsorpay/c/m;->a:Lcom/sponsorpay/c/m;

    .line 1056
    iget-object v0, v0, Lcom/sponsorpay/c/m;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    monitor-exit v1

    return v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
