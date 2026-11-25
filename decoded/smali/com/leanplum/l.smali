.class final Lcom/leanplum/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1085
    :try_start_0
    const-string/jumbo v0, "heartbeat"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
