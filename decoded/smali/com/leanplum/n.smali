.class Lcom/leanplum/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/r;
.implements Lcom/leanplum/bp;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/google/android/gms/common/api/n;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leanplum/n;->e:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/leanplum/n;->b()V

    .line 73
    invoke-static {}, Lcom/leanplum/x;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/leanplum/n;->f:Z

    .line 74
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/location/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/location/e;"
        }
    .end annotation

    .prologue
    .line 145
    const-string/jumbo v0, "lat"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 146
    const-string/jumbo v1, "lon"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    .line 147
    const-string/jumbo v1, "radius"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Number;

    .line 148
    const-string/jumbo v1, "version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/Number;

    .line 149
    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 152
    :cond_0
    new-instance v1, Lcom/google/android/gms/location/f;

    invoke-direct {v1}, Lcom/google/android/gms/location/f;-><init>()V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/f;->a(DDF)Lcom/google/android/gms/location/f;

    .line 155
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/leanplum/n;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/f;->a(Ljava/lang/String;)Lcom/google/android/gms/location/f;

    .line 156
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/f;->a(I)Lcom/google/android/gms/location/f;

    .line 158
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/f;->a(J)Lcom/google/android/gms/location/f;

    .line 159
    invoke-virtual {v1}, Lcom/google/android/gms/location/f;->a()Lcom/google/android/gms/location/e;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    const-string/jumbo v0, "__leanplum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/16 v0, 0xa

    const-string/jumbo v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "__leanplum"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/location/e;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-interface {p1}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leanplum/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_0

    .line 297
    invoke-static {}, Lcom/leanplum/x;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 300
    :goto_0
    invoke-static {p2, v1, v0, v2, v2}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private b(I)I
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 305
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    .line 307
    :cond_0
    const/4 v0, 0x2

    .line 309
    :cond_1
    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "__leanplum__location"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "regionState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "__leanplum__location"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "regionState"

    iget-object v2, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    invoke-static {v2}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/leanplum/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/leanplum/n;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    :cond_0
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You have to set the application meta data and location permission to use geofencing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    .line 173
    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_3

    .line 174
    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/m;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->b()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->e()V

    goto :goto_0

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/leanplum/n;->g()V

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 195
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_0

    .line 198
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 199
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.google.android.gms.version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 207
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/leanplum/n;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/leanplum/n;->f:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/leanplum/x;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leanplum/n;->b:Ljava/util/Map;

    .line 217
    iget-object v0, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/leanplum/n;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/leanplum/n;->h()Ljava/util/List;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/leanplum/n;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 223
    sget-object v1, Lcom/google/android/gms/location/m;->c:Lcom/google/android/gms/location/g;

    iget-object v2, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    iget-object v3, p0, Lcom/leanplum/n;->e:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/common/api/n;Ljava/util/List;)Lcom/google/android/gms/common/api/u;

    .line 225
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/leanplum/n;->e:Ljava/util/List;

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 227
    sget-object v1, Lcom/google/android/gms/location/m;->c:Lcom/google/android/gms/location/g;

    iget-object v2, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    invoke-direct {p0}, Lcom/leanplum/n;->i()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/common/api/n;Ljava/util/List;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/u;

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/location/e;

    .line 230
    iget-object v0, p0, Lcom/leanplum/n;->e:Ljava/util/List;

    invoke-interface {v2}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-boolean v0, p0, Lcom/leanplum/n;->f:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/leanplum/x;->j()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/leanplum/n;->b:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/leanplum/n;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/leanplum/n;->b:Ljava/util/Map;

    invoke-interface {v2}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 240
    iget-object v1, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    invoke-interface {v2}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 241
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 242
    invoke-static {v0, v1}, Lcom/leanplum/co;->a(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    const-string/jumbo v4, "enterRegion"

    invoke-direct {p0, v2, v4}, Lcom/leanplum/n;->a(Lcom/google/android/gms/location/e;Ljava/lang/String;)V

    .line 245
    :cond_5
    invoke-static {v0, v1}, Lcom/leanplum/co;->b(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    const-string/jumbo v0, "exitRegion"

    invoke-direct {p0, v2, v0}, Lcom/leanplum/n;->a(Lcom/google/android/gms/location/e;Ljava/lang/String;)V

    goto :goto_2

    .line 252
    :cond_6
    iget-boolean v0, p0, Lcom/leanplum/n;->f:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/leanplum/x;->j()Z

    move-result v0

    if-nez v0, :cond_7

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leanplum/n;->b:Ljava/util/Map;

    .line 255
    :cond_7
    invoke-static {}, Lcom/leanplum/x;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/leanplum/n;->f:Z

    goto/16 :goto_0
.end method

.method private h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lcom/leanplum/x;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/leanplum/n;->d:Ljava/util/List;

    .line 262
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/leanplum/n;->c:Ljava/util/List;

    goto :goto_0
.end method

.method private i()Landroid/app/PendingIntent;
    .locals 5
    .prologue
    .line 321
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leanplum/ReceiveTransitionsIntentService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v3}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v4
    invoke-static {v0, v2, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/leanplum/n;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leanplum/n;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/leanplum/n;->d()V

    .line 111
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/leanplum/n;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    .line 347
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/e;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/e;

    .line 268
    iget-object v1, p0, Lcom/leanplum/n;->e:Ljava/util/List;

    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "__leanplum"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/google/android/gms/location/m;->c:Lcom/google/android/gms/location/g;

    iget-object v3, p0, Lcom/leanplum/n;->g:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/common/api/n;Ljava/util/List;)Lcom/google/android/gms/common/api/u;

    goto :goto_0

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 278
    if-eqz v1, :cond_3

    .line 279
    invoke-direct {p0, p2}, Lcom/leanplum/n;->b(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/leanplum/co;->a(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    const-string/jumbo v3, "enterRegion"

    invoke-direct {p0, v0, v3}, Lcom/leanplum/n;->a(Lcom/google/android/gms/location/e;Ljava/lang/String;)V

    .line 283
    :cond_2
    invoke-direct {p0, p2}, Lcom/leanplum/n;->b(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/leanplum/co;->b(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    const-string/jumbo v1, "exitRegion"

    invoke-direct {p0, v0, v1}, Lcom/leanplum/n;->a(Lcom/google/android/gms/location/e;Ljava/lang/String;)V

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/leanplum/n;->b(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 291
    :cond_4
    invoke-direct {p0}, Lcom/leanplum/n;->c()V

    .line 292
    return-void
.end method

.method public a(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/leanplum/x;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leanplum/n;->c:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leanplum/n;->d:Ljava/util/List;

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 88
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 89
    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    .line 90
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/leanplum/n;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/location/e;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    if-eqz v3, :cond_3

    .line 94
    iget-object v1, p0, Lcom/leanplum/n;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/leanplum/n;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/leanplum/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_4
    invoke-direct {p0}, Lcom/leanplum/n;->d()V

    goto :goto_0
.end method
