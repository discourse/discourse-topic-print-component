import Component from "@glimmer/component";
import { action } from "@ember/object";
import { getOwner } from "@ember/owner";
import DButton from "discourse/components/d-button";
import { and, not } from "discourse/truth-helpers";

export default class PrintTopicButton extends Component {
  @action
  printTopic() {
    getOwner(this).lookup("controller:topic").print();
  }

  <template>
    {{#if (and (not @fullScreen) @currentUser)}}
      <DButton
        class="btn btn-default print-button"
        @icon="print"
        @title="topic.print.help"
        @action={{this.printTopic}}
      />
    {{/if}}
  </template>
}
