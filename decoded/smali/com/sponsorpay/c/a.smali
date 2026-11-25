.class public abstract Lcom/sponsorpay/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static i:Ljava/net/CookieStore;


# instance fields
.field protected a:Ljava/net/URL;

.field protected b:Z

.field protected c:I

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sponsorpay/c/a",
            "<TV;>.com/sponsorpay/c/b;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/c/a;->b:Z

    .line 52
    iput-boolean v1, p0, Lcom/sponsorpay/c/a;->f:Z

    .line 53
    iput-boolean v1, p0, Lcom/sponsorpay/c/a;->g:Z

    .line 54
    iput-boolean v1, p0, Lcom/sponsorpay/c/a;->h:Z

    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 61
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sponsorpay/c/a;->a:Ljava/net/URL;

    .line 62
    return-void
.end method

.method public static a(Ljava/net/CookieStore;)V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Lcom/sponsorpay/c/a;->i:Ljava/net/CookieStore;

    .line 41
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sponsorpay/c/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    if-eqz v0, :cond_2

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    :try_start_0
    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 205
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/sponsorpay/c/a;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 208
    :cond_1
    sget-object v3, Lcom/sponsorpay/c/a;->i:Ljava/net/CookieStore;

    iget-object v4, p0, Lcom/sponsorpay/c/a;->a:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string/jumbo v2, "SPHttpConnectionAbstract"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    return-void
.end method

.method public static d()Ljava/util/Map;
    .locals 3
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
    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    invoke-static {}, Lcom/sponsorpay/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const-string/jumbo v0, ""

    .line 168
    :cond_0
    const-string/jumbo v2, "X-User-Data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-object v1
.end method

.method private declared-synchronized e()V
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sponsorpay/c/a;->i:Ljava/net/CookieStore;

    if-eqz v0, :cond_0

    .line 191
    sget-object v1, Lcom/sponsorpay/c/a;->i:Ljava/net/CookieStore;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    const-string/jumbo v0, "Set-Cookie"

    invoke-direct {p0, v0}, Lcom/sponsorpay/c/a;->b(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v0, "Set-Cookie2"

    invoke-direct {p0, v0}, Lcom/sponsorpay/c/a;->b(Ljava/lang/String;)V

    .line 194
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/sponsorpay/c/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sponsorpay/c/a",
            "<TV;>;>()TT;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sponsorpay/c/a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 75
    iget-object v1, p0, Lcom/sponsorpay/c/a;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sponsorpay/c/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sponsorpay/c/b;

    .line 77
    iget-object v3, v1, Lcom/sponsorpay/c/b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/sponsorpay/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-boolean v1, p0, Lcom/sponsorpay/c/a;->g:Z

    if-eqz v1, :cond_1

    .line 84
    invoke-static {}, Lcom/sponsorpay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string/jumbo v2, "X-User-Data"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-boolean v1, p0, Lcom/sponsorpay/c/a;->f:Z

    if-eqz v1, :cond_3

    .line 1174
    sget-object v1, Lcom/sponsorpay/c/a;->i:Ljava/net/CookieStore;

    if-eqz v1, :cond_3

    .line 1175
    sget-object v2, Lcom/sponsorpay/c/a;->i:Ljava/net/CookieStore;

    monitor-enter v2

    .line 1177
    :try_start_0
    sget-object v1, Lcom/sponsorpay/c/a;->i:Ljava/net/CookieStore;

    iget-object v3, p0, Lcom/sponsorpay/c/a;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 1178
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1179
    const-string/jumbo v3, "Cookie"

    const-string/jumbo v4, ";"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/sponsorpay/c/a;->c:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/c/a;->d:Ljava/util/Map;

    .line 102
    invoke-virtual {p0, v0}, Lcom/sponsorpay/c/a;->a(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/c/a;->e:Ljava/lang/Object;

    .line 104
    iget-boolean v1, p0, Lcom/sponsorpay/c/a;->f:Z

    if-eqz v1, :cond_4

    .line 105
    invoke-direct {p0}, Lcom/sponsorpay/c/a;->e()V

    .line 108
    :cond_4
    iget-boolean v1, p0, Lcom/sponsorpay/c/a;->h:Z

    if-eqz v1, :cond_5

    .line 109
    invoke-virtual {p0, v0}, Lcom/sponsorpay/c/a;->b(Ljava/net/HttpURLConnection;)V

    .line 112
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/c/a;->b:Z

    .line 113
    return-object p0

    .line 1182
    :catch_0
    move-exception v1

    .line 1183
    :try_start_3
    const-string/jumbo v3, "SPHttpConnectionAbstract"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 96
    :catch_1
    move-exception v1

    .line 97
    const-string/jumbo v2, "SPHttpConnectionAbstract"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/sponsorpay/c/a;->c:I

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sponsorpay/c/a",
            "<TV;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sponsorpay/c/a;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/c/a;->j:Ljava/util/List;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/c/a;->j:Ljava/util/List;

    new-instance v1, Lcom/sponsorpay/c/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/sponsorpay/c/b;-><init>(Lcom/sponsorpay/c/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-object p0
.end method

.method protected abstract a(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")TV;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sponsorpay/c/a;->b:Z

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/c/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sponsorpay/c/a;->b:Z

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget v0, p0, Lcom/sponsorpay/c/a;->c:I

    return v0
.end method

.method protected b(Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    :cond_0
    return-void
.end method

.method protected c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/sponsorpay/c/a;->b:Z

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/c/a;->e:Ljava/lang/Object;

    return-object v0
.end method
