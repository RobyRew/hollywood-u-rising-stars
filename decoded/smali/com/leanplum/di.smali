.class final Lcom/leanplum/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/leanplum/di;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1806
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/di;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    :goto_0
    return-void

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
