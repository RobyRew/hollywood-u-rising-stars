.class final Lcom/leanplum/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1675
    iput-object p1, p0, Lcom/leanplum/dg;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/leanplum/dg;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1679
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/dg;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/leanplum/dg;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :goto_0
    return-void

    .line 1680
    :catch_0
    move-exception v0

    .line 1681
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
