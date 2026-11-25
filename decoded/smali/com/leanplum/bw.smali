.class final Lcom/leanplum/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/leanplum/bw;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/leanplum/bw;
    .locals 2

    .prologue
    .line 11
    const-class v1, Lcom/leanplum/bw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/leanplum/bw;->a:Lcom/leanplum/bw;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/leanplum/bw;

    invoke-direct {v0}, Lcom/leanplum/bw;-><init>()V

    sput-object v0, Lcom/leanplum/bw;->a:Lcom/leanplum/bw;

    .line 14
    :cond_0
    sget-object v0, Lcom/leanplum/bw;->a:Lcom/leanplum/bw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/y;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/leanplum/y;

    invoke-direct {v0, p0, p1, p2}, Lcom/leanplum/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
