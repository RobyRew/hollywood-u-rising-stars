.class final Lcom/leanplum/az;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/leanplum/au;


# direct methods
.method constructor <init>(Lcom/leanplum/au;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/leanplum/az;->a:Lcom/leanplum/au;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/leanplum/az;->a:Lcom/leanplum/au;

    iget-object v1, v1, Lcom/leanplum/au;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 232
    :try_start_0
    invoke-static {v0}, Lcom/leanplum/au;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/leanplum/az;->a:Lcom/leanplum/au;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/leanplum/au;->c:Ljava/lang/String;

    .line 235
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 236
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/leanplum/az;->a:Lcom/leanplum/au;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v2, Lcom/leanplum/au;->d:I

    .line 238
    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 239
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 241
    const-string/jumbo v0, "websocket"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "websocket not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    iget-object v1, p0, Lcom/leanplum/az;->a:Lcom/leanplum/au;

    iget-object v1, v1, Lcom/leanplum/au;->b:Lcom/leanplum/ba;

    invoke-interface {v1, v0}, Lcom/leanplum/ba;->a(Ljava/lang/Exception;)V

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 245
    iget-object v0, p0, Lcom/leanplum/az;->a:Lcom/leanplum/au;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/leanplum/au;->g:Landroid/os/Looper;

    .line 246
    iget-object v0, p0, Lcom/leanplum/az;->a:Lcom/leanplum/au;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/leanplum/au;->f:Landroid/os/Handler;

    .line 248
    iget-object v0, p0, Lcom/leanplum/az;->a:Lcom/leanplum/au;

    invoke-static {v0}, Lcom/leanplum/au;->b(Lcom/leanplum/au;)V

    .line 250
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
