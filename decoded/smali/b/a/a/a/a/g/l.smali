.class Lb/a/a/a/a/g/l;
.super Lb/a/a/a/a/b/a;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/g/z;


# direct methods
.method public constructor <init>(Lb/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;)V
    .locals 6

    .prologue
    .line 66
    sget-object v5, Lb/a/a/a/a/e/d;->a:Lb/a/a/a/a/e/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lb/a/a/a/a/g/l;-><init>(Lb/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;Lb/a/a/a/a/e/d;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lb/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;Lb/a/a/a/a/e/d;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p5}, Lb/a/a/a/a/b/a;-><init>(Lb/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;Lb/a/a/a/a/e/d;)V

    .line 75
    return-void
.end method

.method private a(Lb/a/a/a/a/e/e;Lb/a/a/a/a/g/y;)Lb/a/a/a/a/e/e;
    .locals 2

    .prologue
    .line 159
    const-string/jumbo v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lb/a/a/a/a/g/y;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v1, "android"

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v1, p0, Lb/a/a/a/a/g/l;->a:Lb/a/a/a/q;

    invoke-virtual {v1}, Lb/a/a/a/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "application/json"

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "X-CRASHLYTICS-DEVICE-MODEL"

    iget-object v1, p2, Lb/a/a/a/a/g/y;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "X-CRASHLYTICS-OS-BUILD-VERSION"

    iget-object v1, p2, Lb/a/a/a/a/g/y;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    iget-object v1, p2, Lb/a/a/a/a/g/y;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "X-CRASHLYTICS-ADVERTISING-TOKEN"

    iget-object v1, p2, Lb/a/a/a/a/g/y;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "X-CRASHLYTICS-INSTALLATION-ID"

    iget-object v1, p2, Lb/a/a/a/a/g/y;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "X-CRASHLYTICS-ANDROID-ID"

    iget-object v1, p2, Lb/a/a/a/a/g/y;->g:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object p1
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse settings JSON from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/a/a/g/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Settings response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lb/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    if-eqz p3, :cond_0

    .line 177
    invoke-virtual {p1, p2, p3}, Lb/a/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lb/a/a/a/a/e/e;

    .line 179
    :cond_0
    return-void
.end method

.method private b(Lb/a/a/a/a/g/y;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/a/g/y;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    const-string/jumbo v1, "build_version"

    iget-object v2, p1, Lb/a/a/a/a/g/y;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v1, "display_version"

    iget-object v2, p1, Lb/a/a/a/a/g/y;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v1, "source"

    iget v2, p1, Lb/a/a/a/a/g/y;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p1, Lb/a/a/a/a/g/y;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    const-string/jumbo v1, "icon_hash"

    iget-object v2, p1, Lb/a/a/a/a/g/y;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    iget-object v1, p1, Lb/a/a/a/a/g/y;->h:Ljava/lang/String;

    .line 149
    invoke-static {v1}, Lb/a/a/a/a/b/m;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    const-string/jumbo v2, "instance"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    return-object v0
.end method


# virtual methods
.method a(Lb/a/a/a/a/e/e;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 103
    invoke-virtual {p1}, Lb/a/a/a/a/e/e;->b()I

    move-result v0

    .line 104
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Settings result was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v0}, Lb/a/a/a/a/g/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lb/a/a/a/a/e/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/g/l;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to retrieve settings from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/a/a/g/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lb/a/a/a/a/g/y;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-direct {p0, p1}, Lb/a/a/a/a/g/l;->b(Lb/a/a/a/a/g/y;)Ljava/util/Map;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lb/a/a/a/a/g/l;->a(Ljava/util/Map;)Lb/a/a/a/a/e/e;

    move-result-object v1

    .line 85
    invoke-direct {p0, v1, p1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;Lb/a/a/a/a/g/y;)Lb/a/a/a/a/e/e;

    move-result-object v1

    .line 87
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requesting settings from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lb/a/a/a/a/g/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings query params were: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v1}, Lb/a/a/a/a/g/l;->a(Lb/a/a/a/a/e/e;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings request ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "X-REQUEST-ID"

    invoke-virtual {v1, v5}, Lb/a/a/a/a/e/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 93
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings request ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "X-REQUEST-ID"

    invoke-virtual {v1, v5}, Lb/a/a/a/a/e/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
