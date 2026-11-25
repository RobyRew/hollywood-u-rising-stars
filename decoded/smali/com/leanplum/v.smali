.class final Lcom/leanplum/v;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/leanplum/u;


# direct methods
.method constructor <init>(Lcom/leanplum/u;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/leanplum/v;->a:Lcom/leanplum/u;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 2

    .prologue
    .line 331
    :try_start_0
    const-string/jumbo v0, "Open action"

    iget-object v1, p0, Lcom/leanplum/v;->a:Lcom/leanplum/u;

    iget-object v1, v1, Lcom/leanplum/u;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
