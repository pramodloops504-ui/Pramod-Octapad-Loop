.class Lcom/pramod/loopmidi/LoopsActivity$8;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/loopmidi/LoopsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/loopmidi/LoopsActivity;


# direct methods
.method constructor <init>(Lcom/pramod/loopmidi/LoopsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/loopmidi/LoopsActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/pramod/loopmidi/LoopsActivity$8;->this$0:Lcom/pramod/loopmidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/pramod/loopmidi/LoopsActivity$8;->this$0:Lcom/pramod/loopmidi/LoopsActivity;

    invoke-virtual {v0}, Lcom/pramod/loopmidi/LoopsActivity;->showSaveLoopNameDialog()V

    .line 263
    return-void
.end method
