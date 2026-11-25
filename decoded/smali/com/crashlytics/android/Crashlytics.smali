.class public Lcom/crashlytics/android/Crashlytics;
.super Lb/a/a/a/q;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/q",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lb/a/a/a/r;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Crashlytics"


# instance fields
.field public final a:Lcom/crashlytics/android/a/a;

.field public final b:Lcom/crashlytics/android/b/e;

.field public final c:Lcom/crashlytics/android/c/ao;

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/a/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/crashlytics/android/a/a;

    invoke-direct {v0}, Lcom/crashlytics/android/a/a;-><init>()V

    new-instance v1, Lcom/crashlytics/android/b/e;

    invoke-direct {v1}, Lcom/crashlytics/android/b/e;-><init>()V

    new-instance v2, Lcom/crashlytics/android/c/ao;

    invoke-direct {v2}, Lcom/crashlytics/android/c/ao;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;-><init>(Lcom/crashlytics/android/a/a;Lcom/crashlytics/android/b/e;Lcom/crashlytics/android/c/ao;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/a/a;Lcom/crashlytics/android/b/e;Lcom/crashlytics/android/c/ao;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lb/a/a/a/q;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->a:Lcom/crashlytics/android/a/a;

    .line 34
    iput-object p2, p0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/b/e;

    .line 35
    iput-object p3, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lb/a/a/a/q;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Ljava/util/Collection;

    .line 38
    return-void
.end method

.method private static f()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/crashlytics/android/Crashlytics;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/crashlytics/android/Crashlytics;

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/Crashlytics;

    return-object v0
.end method

.method public static getPinningInfoProvider()Lcom/crashlytics/android/c/cg;
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 199
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/ao;->g()Lcom/crashlytics/android/c/cg;

    move-result-object v0

    return-object v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 231
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/c/ao;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 219
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 208
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/Throwable;)V

    .line 209
    return-void
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 276
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;Z)V

    .line 277
    return-void
.end method

.method public static setDouble(Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 285
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;D)V

    .line 286
    return-void
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 294
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;F)V

    .line 295
    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 303
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;I)V

    .line 304
    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 312
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;J)V

    .line 313
    return-void
.end method

.method public static setPinningInfoProvider(Lcom/crashlytics/android/c/cg;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Use of Crashlytics.setPinningInfoProvider is deprecated"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 267
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 258
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/c/ao;->d(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 240
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/c/ao;->b(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()V

    .line 249
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/c/ao;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/c/ao;->c(Ljava/lang/String;)V

    .line 250
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "2.6.6.167"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/a/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Ljava/util/Collection;

    return-object v0
.end method

.method protected d()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
