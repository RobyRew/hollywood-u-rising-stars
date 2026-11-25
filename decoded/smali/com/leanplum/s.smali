.class final Lcom/leanplum/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/bg;


# instance fields
.field private synthetic a:Lcom/leanplum/q;


# direct methods
.method constructor <init>(Lcom/leanplum/q;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/leanplum/s;->a:Lcom/leanplum/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/leanplum/s;->a:Lcom/leanplum/q;

    iget-object v0, v0, Lcom/leanplum/q;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    invoke-virtual {v0}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    .line 177
    return-void
.end method
