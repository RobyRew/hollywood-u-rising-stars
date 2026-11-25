.class Lcom/jirbo/adcolony/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/bi;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/bi;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/jirbo/adcolony/bp;->a:Lcom/jirbo/adcolony/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/jirbo/adcolony/bp;->a:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/bp;->a:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/ck;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ck;->setVisibility(I)V

    .line 1284
    :cond_0
    return-void
.end method
