.class final Lcom/leanplum/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/leanplum/ba;

.field c:Ljava/lang/String;

.field d:I

.field e:Lcom/leanplum/ci;

.field f:Landroid/os/Handler;

.field g:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/leanplum/ba;)V
    .locals 4

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/$"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/socket.io/1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/au;->a:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/leanplum/au;->b:Lcom/leanplum/ba;

    .line 66
    return-void
.end method

.method static synthetic a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/leanplum/au;->b(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/leanplum/au;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    .line 1213
    iget-object v0, p0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    invoke-virtual {v0}, Lcom/leanplum/ci;->c()V

    .line 1215
    iput-object v1, p0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/leanplum/au;->g:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/leanplum/au;->g:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1221
    :cond_1
    iput-object v1, p0, Lcom/leanplum/au;->g:Landroid/os/Looper;

    .line 1222
    iput-object v1, p0, Lcom/leanplum/au;->f:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 5

    .prologue
    .line 81
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 83
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 86
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    const-string/jumbo v0, "android-websockets"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 73
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1093
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/leanplum/au;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v0
.end method

.method static synthetic b(Lcom/leanplum/au;)V
    .locals 4

    .prologue
    .line 45
    .line 2113
    new-instance v0, Lcom/leanplum/ci;

    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leanplum/au;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "websocket/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/leanplum/au;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/leanplum/aw;

    invoke-direct {v2, p0}, Lcom/leanplum/aw;-><init>(Lcom/leanplum/au;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/leanplum/ci;-><init>(Ljava/net/URI;Lcom/leanplum/cm;Ljava/util/List;)V

    iput-object v0, p0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    .line 2205
    iget-object v0, p0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    invoke-virtual {v0}, Lcom/leanplum/ci;->b()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v1, "args"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    iget-object v1, p0, Lcom/leanplum/au;->f:Landroid/os/Handler;

    new-instance v2, Lcom/leanplum/av;

    invoke-direct {v2, p0, v0}, Lcom/leanplum/av;-><init>(Lcom/leanplum/au;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method
