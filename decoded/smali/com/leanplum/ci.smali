.class final Lcom/leanplum/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/net/URI;

.field private b:Lcom/leanplum/cm;

.field private c:Ljava/net/Socket;

.field private d:Ljava/lang/Thread;

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/leanplum/da;

.field private final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/leanplum/cm;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/leanplum/cm;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/leanplum/ci;->i:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/leanplum/ci;->a:Ljava/net/URI;

    .line 72
    iput-object p2, p0, Lcom/leanplum/ci;->b:Lcom/leanplum/cm;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leanplum/ci;->g:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/leanplum/da;

    invoke-direct {v0, p0}, Lcom/leanplum/da;-><init>(Lcom/leanplum/ci;)V

    iput-object v0, p0, Lcom/leanplum/ci;->h:Lcom/leanplum/da;

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "websocket-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/leanplum/ci;->e:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Lcom/leanplum/ci;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/leanplum/ci;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/leanplum/ci;->f:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/leanplum/ci;Lcom/leanplum/db;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 50
    .line 3204
    invoke-virtual {p1}, Lcom/leanplum/db;->read()I

    move-result v1

    .line 3205
    if-ne v1, v4, :cond_0

    .line 3216
    :goto_0
    return-object v0

    .line 3208
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3209
    :cond_1
    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    .line 3210
    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    .line 3211
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3214
    :cond_2
    invoke-virtual {p1}, Lcom/leanplum/db;->read()I

    move-result v1

    .line 3215
    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 3219
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/leanplum/ci;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/leanplum/ci;->c:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic a(Lcom/leanplum/ci;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/leanplum/ci;->a:Ljava/net/URI;

    return-object v0
.end method

.method static synthetic a(Lcom/leanplum/ci;Ljava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 50
    .line 4192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4193
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4195
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/leanplum/ci;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1258
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1259
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1260
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method static synthetic b(Lcom/leanplum/ci;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 50
    .line 4199
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method static synthetic c(Lcom/leanplum/ci;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/leanplum/ci;->c:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic d(Lcom/leanplum/ci;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 2223
    new-array v2, v8, [B

    move v0, v1

    .line 2224
    :goto_0
    if-ge v0, v8, :cond_0

    .line 2225
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 2224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2227
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method static synthetic e(Lcom/leanplum/ci;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/leanplum/ci;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/leanplum/ci;)Lcom/leanplum/cm;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/leanplum/ci;->b:Lcom/leanplum/cm;

    return-object v0
.end method

.method static synthetic g(Lcom/leanplum/ci;)Lcom/leanplum/da;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/leanplum/ci;->h:Lcom/leanplum/da;

    return-object v0
.end method

.method static synthetic h(Lcom/leanplum/ci;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/leanplum/ci;->i:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/leanplum/cm;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/leanplum/ci;->b:Lcom/leanplum/cm;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/leanplum/ci;->h:Lcom/leanplum/da;

    invoke-virtual {v0, p1}, Lcom/leanplum/da;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leanplum/ci;->a([B)V

    .line 185
    return-void
.end method

.method final a([B)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/leanplum/ci;->f:Landroid/os/Handler;

    new-instance v1, Lcom/leanplum/cl;

    invoke-direct {v1, p0, p1}, Lcom/leanplum/cl;-><init>(Lcom/leanplum/ci;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/leanplum/ci;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leanplum/ci;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leanplum/cj;

    invoke-direct {v1, p0}, Lcom/leanplum/cj;-><init>(Lcom/leanplum/ci;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/leanplum/ci;->d:Ljava/lang/Thread;

    .line 161
    iget-object v0, p0, Lcom/leanplum/ci;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/leanplum/ci;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/leanplum/ci;->f:Landroid/os/Handler;

    new-instance v1, Lcom/leanplum/ck;

    invoke-direct {v1, p0}, Lcom/leanplum/ck;-><init>(Lcom/leanplum/ci;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_0
    return-void
.end method
