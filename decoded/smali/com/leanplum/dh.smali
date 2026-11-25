.class final Lcom/leanplum/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/leanplum/dh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1762
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    :goto_0
    return-void

    .line 1766
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1767
    const-string/jumbo v1, "gcmRegistrationId"

    iget-object v2, p0, Lcom/leanplum/dh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    const-string/jumbo v1, "setDeviceAttributes"

    invoke-static {v1, v0}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
