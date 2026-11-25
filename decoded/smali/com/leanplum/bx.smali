.class final Lcom/leanplum/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/leanplum/by;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leanplum/bx;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/leanplum/bx;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 478
    new-instance v4, Lcom/leanplum/bx;

    invoke-direct {v4}, Lcom/leanplum/bx;-><init>()V

    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 481
    array-length v6, v5

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    move v2, v0

    move v0, v1

    .line 483
    :goto_1
    if-nez v0, :cond_1

    invoke-static {}, Lcom/leanplum/by;->values()[Lcom/leanplum/by;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 484
    invoke-static {}, Lcom/leanplum/by;->values()[Lcom/leanplum/by;

    move-result-object v8

    aget-object v8, v8, v2

    .line 485
    invoke-virtual {v8}, Lcom/leanplum/by;->a()Lcom/leanplum/at;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/leanplum/at;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 486
    if-eqz v9, :cond_0

    .line 487
    iget-object v0, v4, Lcom/leanplum/bx;->a:Ljava/util/Map;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/4 v0, 0x1

    .line 490
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 491
    goto :goto_1

    .line 481
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 493
    :cond_2
    return-object v4
.end method
