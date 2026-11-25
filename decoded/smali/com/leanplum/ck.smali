.class final Lcom/leanplum/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/leanplum/ci;


# direct methods
.method constructor <init>(Lcom/leanplum/ci;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/leanplum/ck;->a:Lcom/leanplum/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/ck;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->c(Lcom/leanplum/ci;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/leanplum/ck;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->c(Lcom/leanplum/ci;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 172
    iget-object v0, p0, Lcom/leanplum/ck;->a:Lcom/leanplum/ci;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "Error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object v1, p0, Lcom/leanplum/ck;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->f(Lcom/leanplum/ci;)Lcom/leanplum/cm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/leanplum/cm;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
