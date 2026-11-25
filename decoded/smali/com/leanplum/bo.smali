.class final Lcom/leanplum/bo;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/leanplum/bj;


# direct methods
.method constructor <init>(Lcom/leanplum/bj;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/leanplum/bo;->a:Lcom/leanplum/bj;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/bo;->a:Lcom/leanplum/bj;

    invoke-static {v0}, Lcom/leanplum/bj;->c(Lcom/leanplum/bj;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
