.class final Lcom/leanplum/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[B

.field private synthetic b:Lcom/leanplum/ci;


# direct methods
.method constructor <init>(Lcom/leanplum/ci;[B)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/leanplum/cl;->b:Lcom/leanplum/ci;

    iput-object p2, p0, Lcom/leanplum/cl;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/cl;->b:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->h(Lcom/leanplum/ci;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/leanplum/cl;->b:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->c(Lcom/leanplum/ci;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/leanplum/cl;->b:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->c(Lcom/leanplum/ci;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 238
    iget-object v2, p0, Lcom/leanplum/cl;->a:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 239
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 241
    :cond_0
    monitor-exit v1

    .line 245
    :goto_0
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    iget-object v1, p0, Lcom/leanplum/cl;->b:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->f(Lcom/leanplum/ci;)Lcom/leanplum/cm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/leanplum/cm;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
